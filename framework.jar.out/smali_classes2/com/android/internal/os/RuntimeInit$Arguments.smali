.class Lcom/android/internal/os/RuntimeInit$Arguments;
.super Ljava/lang/Object;
.source "RuntimeInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RuntimeInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Arguments"
.end annotation


# instance fields
.field startArgs:[Ljava/lang/String;

.field startClass:Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    invoke-direct {p0, p1}, Lcom/android/internal/os/RuntimeInit$Arguments;->parseArgs([Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method private parseArgs([Ljava/lang/String;)V
    .locals 4
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 460
    const/4 v0, 0x0

    move v1, v0

    .line 461
    .local v1, "curArg":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 462
    aget-object v2, p1, v1

    .line 464
    .local v2, "arg":Ljava/lang/String;
    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 465
    add-int/lit8 v1, v1, 0x1

    .line 466
    goto :goto_1

    .line 467
    :cond_0
    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 468
    goto :goto_1

    .line 461
    .end local v2    # "arg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 472
    :cond_2
    :goto_1
    array-length v2, p1

    if-eq v1, v2, :cond_3

    .line 476
    add-int/lit8 v2, v1, 0x1

    .local v2, "curArg":I
    aget-object v1, p1, v1

    .end local v1    # "curArg":I
    iput-object v1, p0, Lcom/android/internal/os/RuntimeInit$Arguments;->startClass:Ljava/lang/String;

    .line 477
    array-length v1, p1

    sub-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/RuntimeInit$Arguments;->startArgs:[Ljava/lang/String;

    .line 478
    iget-object v1, p0, Lcom/android/internal/os/RuntimeInit$Arguments;->startArgs:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/os/RuntimeInit$Arguments;->startArgs:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {p1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 479
    return-void

    .line 473
    .end local v2    # "curArg":I
    .restart local v1    # "curArg":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Missing classname argument to RuntimeInit!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
