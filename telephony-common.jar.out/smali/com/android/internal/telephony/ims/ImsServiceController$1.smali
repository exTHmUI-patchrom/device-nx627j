.class Lcom/android/internal/telephony/ims/ImsServiceController$1;
.super Landroid/telephony/ims/ImsService$Listener;
.source "ImsServiceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ims/ImsServiceController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/ims/ImsServiceController;

    .line 152
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$1;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-direct {p0}, Landroid/telephony/ims/ImsService$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateSupportedImsFeatures(Landroid/telephony/ims/stub/ImsFeatureConfiguration;)V
    .locals 2
    .param p1, "c"    # Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$1;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->access$1000(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    move-result-object v0

    if-nez v0, :cond_0

    .line 156
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$1;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->access$1000(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$1;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;->imsServiceFeaturesChanged(Landroid/telephony/ims/stub/ImsFeatureConfiguration;Lcom/android/internal/telephony/ims/ImsServiceController;)V

    .line 159
    return-void
.end method
