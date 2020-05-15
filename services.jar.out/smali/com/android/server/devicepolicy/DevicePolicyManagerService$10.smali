.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;
.super Landroid/app/backup/ISelectBackupTransportCallback$Stub;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setMandatoryBackupTransport(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field final synthetic val$admin:Landroid/content/ComponentName;

.field final synthetic val$backupTransportComponent:Landroid/content/ComponentName;

.field final synthetic val$callingUid:I

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$success:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;ILandroid/content/ComponentName;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 11999
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$admin:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$callingUid:I

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$backupTransportComponent:Landroid/content/ComponentName;

    iput-object p5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$success:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/app/backup/ISelectBackupTransportCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 12007
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 12008
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "transportName"    # Ljava/lang/String;

    .line 12001
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$admin:Landroid/content/ComponentName;

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$callingUid:I

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$backupTransportComponent:Landroid/content/ComponentName;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$3200(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;ILandroid/content/ComponentName;)V

    .line 12002
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$success:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12003
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 12004
    return-void
.end method
