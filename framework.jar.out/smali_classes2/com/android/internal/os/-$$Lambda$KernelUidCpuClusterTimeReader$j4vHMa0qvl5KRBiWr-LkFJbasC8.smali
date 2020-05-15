.class public final synthetic Lcom/android/internal/os/-$$Lambda$KernelUidCpuClusterTimeReader$j4vHMa0qvl5KRBiWr-LkFJbasC8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/os/KernelUidCpuClusterTimeReader;

.field private final synthetic f$1:Lcom/android/internal/os/KernelUidCpuClusterTimeReader$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/os/KernelUidCpuClusterTimeReader;Lcom/android/internal/os/KernelUidCpuClusterTimeReader$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/-$$Lambda$KernelUidCpuClusterTimeReader$j4vHMa0qvl5KRBiWr-LkFJbasC8;->f$0:Lcom/android/internal/os/KernelUidCpuClusterTimeReader;

    iput-object p2, p0, Lcom/android/internal/os/-$$Lambda$KernelUidCpuClusterTimeReader$j4vHMa0qvl5KRBiWr-LkFJbasC8;->f$1:Lcom/android/internal/os/KernelUidCpuClusterTimeReader$Callback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/-$$Lambda$KernelUidCpuClusterTimeReader$j4vHMa0qvl5KRBiWr-LkFJbasC8;->f$0:Lcom/android/internal/os/KernelUidCpuClusterTimeReader;

    iget-object v1, p0, Lcom/android/internal/os/-$$Lambda$KernelUidCpuClusterTimeReader$j4vHMa0qvl5KRBiWr-LkFJbasC8;->f$1:Lcom/android/internal/os/KernelUidCpuClusterTimeReader$Callback;

    check-cast p1, Ljava/nio/IntBuffer;

    invoke-static {v0, v1, p1}, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->lambda$readDeltaImpl$0(Lcom/android/internal/os/KernelUidCpuClusterTimeReader;Lcom/android/internal/os/KernelUidCpuClusterTimeReader$Callback;Ljava/nio/IntBuffer;)V

    return-void
.end method
