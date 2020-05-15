.class Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$2;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->dualFingerprintEnroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

.field final synthetic val$cryptoToken:[B

.field final synthetic val$deviceId:I

.field final synthetic val$flags:I

.field final synthetic val$opPackageName:Ljava/lang/String;

.field final synthetic val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field final synthetic val$restricted:Z

.field final synthetic val$token:Landroid/os/IBinder;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;ILandroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    .line 1492
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$2;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iput p2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$2;->val$deviceId:I

    iput-object p3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$2;->val$token:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$2;->val$cryptoToken:[B

    iput p5, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$2;->val$userId:I

    iput-object p6, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$2;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iput p7, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$2;->val$flags:I

    iput-boolean p8, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$2;->val$restricted:Z

    iput-object p9, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$2;->val$opPackageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1495
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[enroll] deviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$2;->val$deviceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$2;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget v3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$2;->val$deviceId:I

    const/4 v0, 0x0

    new-array v6, v0, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->processCmd(III[BI)[B

    .line 1497
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$2;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v1, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$2;->val$token:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$2;->val$cryptoToken:[B

    iget v4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$2;->val$userId:I

    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$2;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget v6, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$2;->val$flags:I

    iget-boolean v7, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$2;->val$restricted:Z

    iget-object v8, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$2;->val$opPackageName:Ljava/lang/String;

    invoke-static/range {v1 .. v8}, Lcom/android/server/fingerprint/FingerprintService;->access$2000(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V

    .line 1499
    return-void
.end method
