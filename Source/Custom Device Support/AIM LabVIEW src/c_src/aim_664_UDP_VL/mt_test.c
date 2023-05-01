/*
 * mt_test.c
 *
 *  Created on: Dec 17, 2018
 *      Author: Localization Tester
 */
#include <pthread.h>
#include <stdio.h>

/* Prints x’s to stderr. The parameter is unused. Does not return. */

// parameter to be shared between threads
struct th_shared
{
	char character;
	int count;
};


// worker thread

void* print_xs (void* parameters)
{
	// cast the pointer to the right type
	struct th_shared* p = (struct th_shared*)parameters;
	int i;
	for (i = 0; i < p->count; ++i)
		fputc(p->character,stderr);
	return NULL;
}


int main(int argc, char **argv) {

	pthread_t thread_id1,thread_id2;
	struct th_shared thread1_args,thread2_args;
	// initializa data structures
	thread1_args.character = 'x';
	thread2_args.character = 'y';
	thread1_args.count = 20000;
	thread2_args.count = 30000;

	// create threads
	pthread_create(&thread_id1,NULL,&print_xs,&thread1_args);
	pthread_create(&thread_id2,NULL,&print_xs,&thread2_args);

	// main code structure

	// wait threads to terminate
	pthread_join(thread_id1,NULL);
	pthread_join(thread_id2,NULL);
	return 0;
}


