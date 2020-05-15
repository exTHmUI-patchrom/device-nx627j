.class Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$4;
.super Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ConfigListener;
.source "MmTelFeatureCompatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

.field final synthetic val$c:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

.field final synthetic val$cap:Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;IILjava/util/concurrent/CountDownLatch;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;
    .param p2, "capability"    # I
    .param p3, "tech"    # I
    .param p4, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 335
    iput-object p1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$4;->this$0:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    iput-object p5, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$4;->val$c:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    iput-object p6, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$4;->val$cap:Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ConfigListener;-><init>(IILjava/util/concurrent/CountDownLatch;)V

    return-void
.end method


# virtual methods
.method public setFeatureValueReceived(I)V
    .locals 4
    .param p1, "value"    # I

    .line 338
    if-eqz p1, :cond_1

    .line 339
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$4;->val$c:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    if-nez v0, :cond_0

    .line 340
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$4;->val$c:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$4;->val$cap:Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    invoke-virtual {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$4;->val$cap:Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 343
    invoke-virtual {v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v2

    const/4 v3, -0x1

    .line 342
    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;->onChangeCapabilityConfigurationError(III)V

    .line 345
    :cond_1
    const-string v0, "MmTelFeatureCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeEnabledCapabilities - setFeatureValueReceived with value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void
.end method
