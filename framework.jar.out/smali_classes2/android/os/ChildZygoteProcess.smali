.class public Landroid/os/ChildZygoteProcess;
.super Landroid/os/ZygoteProcess;
.source "ChildZygoteProcess.java"


# instance fields
.field private final mPid:I


# direct methods
.method constructor <init>(Landroid/net/LocalSocketAddress;I)V
    .locals 1
    .param p1, "socketAddress"    # Landroid/net/LocalSocketAddress;
    .param p2, "pid"    # I

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/ZygoteProcess;-><init>(Landroid/net/LocalSocketAddress;Landroid/net/LocalSocketAddress;)V

    .line 35
    iput p2, p0, Landroid/os/ChildZygoteProcess;->mPid:I

    .line 36
    return-void
.end method


# virtual methods
.method public getPid()I
    .locals 1

    .line 42
    iget v0, p0, Landroid/os/ChildZygoteProcess;->mPid:I

    return v0
.end method
