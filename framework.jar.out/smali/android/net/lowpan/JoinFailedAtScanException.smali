.class public Landroid/net/lowpan/JoinFailedAtScanException;
.super Landroid/net/lowpan/JoinFailedException;
.source "JoinFailedAtScanException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/net/lowpan/JoinFailedException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Exception;

    .line 39
    invoke-direct {p0, p1}, Landroid/net/lowpan/JoinFailedException;-><init>(Ljava/lang/Exception;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1}, Landroid/net/lowpan/JoinFailedException;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/net/lowpan/JoinFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    return-void
.end method
