.class public final synthetic Lcom/android/internal/os/-$$Lambda$KernelUidCpuActiveTimeReader$bd1LhtH6p3uJgMUQoWfE2Qs8bRc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/os/KernelUidCpuActiveTimeReader;

.field private final synthetic f$1:Lcom/android/internal/os/KernelUidCpuActiveTimeReader$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/os/KernelUidCpuActiveTimeReader;Lcom/android/internal/os/KernelUidCpuActiveTimeReader$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/-$$Lambda$KernelUidCpuActiveTimeReader$bd1LhtH6p3uJgMUQoWfE2Qs8bRc;->f$0:Lcom/android/internal/os/KernelUidCpuActiveTimeReader;

    iput-object p2, p0, Lcom/android/internal/os/-$$Lambda$KernelUidCpuActiveTimeReader$bd1LhtH6p3uJgMUQoWfE2Qs8bRc;->f$1:Lcom/android/internal/os/KernelUidCpuActiveTimeReader$Callback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/-$$Lambda$KernelUidCpuActiveTimeReader$bd1LhtH6p3uJgMUQoWfE2Qs8bRc;->f$0:Lcom/android/internal/os/KernelUidCpuActiveTimeReader;

    iget-object v1, p0, Lcom/android/internal/os/-$$Lambda$KernelUidCpuActiveTimeReader$bd1LhtH6p3uJgMUQoWfE2Qs8bRc;->f$1:Lcom/android/internal/os/KernelUidCpuActiveTimeReader$Callback;

    check-cast p1, Ljava/nio/IntBuffer;

    invoke-static {v0, v1, p1}, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->lambda$readDeltaImpl$0(Lcom/android/internal/os/KernelUidCpuActiveTimeReader;Lcom/android/internal/os/KernelUidCpuActiveTimeReader$Callback;Ljava/nio/IntBuffer;)V

    return-void
.end method
