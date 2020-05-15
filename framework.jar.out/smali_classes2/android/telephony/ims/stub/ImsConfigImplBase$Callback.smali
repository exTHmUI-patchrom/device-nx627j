.class public Landroid/telephony/ims/stub/ImsConfigImplBase$Callback;
.super Landroid/telephony/ims/aidl/IImsConfigCallback$Stub;
.source "ImsConfigImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/stub/ImsConfigImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 221
    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsConfigCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(II)V
    .locals 0
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 240
    return-void
.end method

.method public onConfigChanged(ILjava/lang/String;)V
    .locals 0
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 249
    return-void
.end method

.method public final onIntConfigChanged(II)V
    .locals 0
    .param p1, "item"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$Callback;->onConfigChanged(II)V

    .line 226
    return-void
.end method

.method public final onStringConfigChanged(ILjava/lang/String;)V
    .locals 0
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$Callback;->onConfigChanged(ILjava/lang/String;)V

    .line 231
    return-void
.end method
