.class public Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;
.super Ljava/lang/Object;
.source "ImsRegistrationImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/stub/ImsRegistrationImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 109
    return-void
.end method

.method public onRegistered(I)V
    .locals 0
    .param p1, "imsRadioTech"    # I

    .line 92
    return-void
.end method

.method public onRegistering(I)V
    .locals 0
    .param p1, "imsRadioTech"    # I

    .line 101
    return-void
.end method

.method public onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    .locals 0
    .param p1, "uris"    # [Landroid/net/Uri;

    .line 130
    return-void
.end method

.method public onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "imsRadioTech"    # I
    .param p2, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 120
    return-void
.end method
