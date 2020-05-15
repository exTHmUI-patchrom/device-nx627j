.class Landroid/telephony/ims/stub/ImsEcbmImplBase$1;
.super Lcom/android/ims/internal/IImsEcbm$Stub;
.source "ImsEcbmImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/stub/ImsEcbmImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/ims/stub/ImsEcbmImplBase;


# direct methods
.method constructor <init>(Landroid/telephony/ims/stub/ImsEcbmImplBase;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/ims/stub/ImsEcbmImplBase;

    .line 40
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsEcbmImplBase;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsEcbm$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public exitEmergencyCallbackMode()V
    .locals 1

    .line 48
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsEcbmImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsEcbmImplBase;->exitEmergencyCallbackMode()V

    .line 49
    return-void
.end method

.method public setListener(Lcom/android/ims/internal/IImsEcbmListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/ims/internal/IImsEcbmListener;

    .line 43
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsEcbmImplBase;

    invoke-static {v0, p1}, Landroid/telephony/ims/stub/ImsEcbmImplBase;->access$002(Landroid/telephony/ims/stub/ImsEcbmImplBase;Lcom/android/ims/internal/IImsEcbmListener;)Lcom/android/ims/internal/IImsEcbmListener;

    .line 44
    return-void
.end method
