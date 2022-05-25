-- CreateTable
CREATE TABLE "Task" (
    "id" SERIAL  NOT NULL PRIMARY KEY,
    "label" TEXT NOT NULL,
    "done" BOOLEAN NOT NULL DEFAULT false
);
