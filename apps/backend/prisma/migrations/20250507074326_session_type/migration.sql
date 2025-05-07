-- CreateTable
CREATE TABLE "User" (
    "authSchId" TEXT NOT NULL,
    "email" TEXT NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("authSchId")
);

-- CreateTable
CREATE TABLE "SessionType" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "length" INTEGER NOT NULL,
    "hasPoints" BOOLEAN NOT NULL,
    "pointsForPositions" INTEGER[],
    "seriesId" INTEGER,

    CONSTRAINT "SessionType_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");
