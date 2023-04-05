// #include <iostream>
// #include <cstdlib>
// #include <cstring>
// #include <sys/types.h>
// #include <sys/socket.h>
// #include <netinet/in.h>
// #include <arpa/inet.h>
// #include <unistd.h>

// // int init_server() {
// //     int sockfd, portno;
// //     struct sockaddr_in serv_addr;
// //     char buffer[256];

// //     sockfd = socket(AF_INET, SOCK_STREAM, 0);
// //     if (sockfd < 0) {
// //         std::cerr << "ERROR opening socket" << std::endl;
// //         exit(1);
// //     }

// //     std::memset(&serv_addr, 0, sizeof(serv_addr));
// //     portno = 9999;
// //     serv_addr.sin_family = AF_INET;
// //     serv_addr.sin_addr.s_addr = INADDR_ANY;
// //     serv_addr.sin_port = htons(portno);

// //     if (bind(sockfd, (struct sockaddr *) &serv_addr, sizeof(serv_addr)) < 0) {
// //         std::cerr << "ERROR on binding" << std::endl;
// //         exit(1);
// //     }

// //     listen(sockfd, 10);

// //     std::cout << "Server listening on port " << portno << std::endl;
// //     return sockfd;
// // }


// // int main() {
// //     int fd = init_server();

// //     return 0;
// // }


// #include <liburing.h>
// #include <stdio.h>
// #include <stdlib.h>
// #include <unistd.h>
// #include <fcntl.h>

// #define QUEUE_DEPTH 1

// int main() {
//     struct io_uring ring;
//     int ret = io_uring_queue_init(QUEUE_DEPTH, &ring, 0);
//     if (ret < 0) {
//         perror("io_uring_queue_init");
//         return EXIT_FAILURE;
//     }

//     std::cout << "1" << std::endl;
//     int fd = open("example.txt", O_RDONLY);
//     if (fd < 0) {
//         perror("open");
//         return EXIT_FAILURE;
//     }

//     struct io_uring_sqe *sqe = io_uring_get_sqe(&ring);
//     io_uring_prep_read(sqe, fd, NULL, 0, 0);
//     io_uring_submit(&ring);

//     struct io_uring_cqe *cqe;
//     ret = io_uring_wait_cqe(&ring, &cqe);
//     if (ret < 0) {
//         perror("io_uring_wait_cqe");
//         return EXIT_FAILURE;
//     }

//     if (cqe->res < 0) {
//         perror("io_uring");
//         return EXIT_FAILURE;
//     }

//     printf("Read %d bytes from file\n", cqe->res);

//     io_uring_cqe_seen(&ring, cqe);
//     io_uring_queue_exit(&ring);
//     close(fd);

//     return EXIT_SUCCESS;
// }

// // The above code is an example of using io_uring to read from a file.
// // It initializes the io_uring queue, opens a file, prepares a read operation, submits it to the queue,
// // waits for the operation to complete, and then prints the number of bytes read.
// // Finally, it cleans up and exits.




#include <liburing.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>

int main() {
    struct io_uring ring;
    io_uring_queue_init(32, &ring, 0);

    int fd = open("example.txt", O_WRONLY | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR);
    if (fd < 0) {
        perror("open");
        return 1;
    }
    printf("open fd: %d\n", fd);

    char buffer[4096] = "i write using io_uring";
    struct iovec iov = {
        .iov_base = buffer,
        .iov_len = sizeof(buffer)
    };

    struct io_uring_sqe *sqe = io_uring_get_sqe(&ring);
    printf("io_uring_get_sqe\n");

    io_uring_prep_writev(sqe, fd, &iov, 1, 0);
    printf("io_uring_prep_writev\n");
    io_uring_sqe_set_data(sqe, buffer);
    printf("io_uring_sqe_set_data\n");

    io_uring_submit(&ring);

    struct io_uring_cqe *cqe;
    int ret = io_uring_wait_cqe(&ring, &cqe);
    if (ret < 0) {
        perror("io_uring_wait_cqe");
        return 1;
    }

    if (cqe->res < 0) {
        perror("io_uring");
        return 1;
    }

    io_uring_cqe_seen(&ring, cqe);
    close(fd);
    io_uring_queue_exit(&ring);
    return 0;
}

// The above code demonstrates how to use io_uring to write to a file.
// It initializes an io_uring instance, opens a file, prepares a writev operation, and submits it to the io_uring instance.
// It then waits for the operation to complete and checks for errors before cleaning up and exiting.
