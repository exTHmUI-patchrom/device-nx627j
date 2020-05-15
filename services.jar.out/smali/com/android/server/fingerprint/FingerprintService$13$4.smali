.class Lcom/android/server/fingerprint/FingerprintService$13$4;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$13;->onError(JII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$13;

.field final synthetic val$deviceId:J

.field final synthetic val$error:I

.field final synthetic val$vendorCode:I


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$13;JII)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/fingerprint/FingerprintService$13;

    .line 1358
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$13$4;->this$1:Lcom/android/server/fingerprint/FingerprintService$13;

    iput-wide p2, p0, Lcom/android/server/fingerprint/FingerprintService$13$4;->val$deviceId:J

    iput p4, p0, Lcom/android/server/fingerprint/FingerprintService$13$4;->val$error:I

    iput p5, p0, Lcom/android/server/fingerprint/FingerprintService$13$4;->val$vendorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1361
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$13$4;->this$1:Lcom/android/server/fingerprint/FingerprintService$13;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$13;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-wide v1, p0, Lcom/android/server/fingerprint/FingerprintService$13$4;->val$deviceId:J

    iget v3, p0, Lcom/android/server/fingerprint/FingerprintService$13$4;->val$error:I

    iget v4, p0, Lcom/android/server/fingerprint/FingerprintService$13$4;->val$vendorCode:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/fingerprint/FingerprintService;->handleError(JII)V

    .line 1362
    return-void
.end method
