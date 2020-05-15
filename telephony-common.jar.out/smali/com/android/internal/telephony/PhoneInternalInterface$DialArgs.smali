.class public Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
.super Ljava/lang/Object;
.source "PhoneInternalInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneInternalInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialArgs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;
    }
.end annotation


# instance fields
.field public final intentExtras:Landroid/os/Bundle;

.field public final uusInfo:Lcom/android/internal/telephony/UUSInfo;

.field public final videoState:I


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;)V
    .locals 1
    .param p1, "b"    # Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 107
    iget v0, p1, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->mVideoState:I

    iput v0, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->videoState:I

    .line 108
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->mIntentExtras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    .line 109
    return-void
.end method
