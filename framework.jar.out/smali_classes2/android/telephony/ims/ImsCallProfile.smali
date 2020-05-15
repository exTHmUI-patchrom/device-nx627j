.class public final Landroid/telephony/ims/ImsCallProfile;
.super Ljava/lang/Object;
.source "ImsCallProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CALL_RESTRICT_CAUSE_DISABLED:I = 0x2

.field public static final CALL_RESTRICT_CAUSE_HD:I = 0x3

.field public static final CALL_RESTRICT_CAUSE_NONE:I = 0x0

.field public static final CALL_RESTRICT_CAUSE_RAT:I = 0x1

.field public static final CALL_TYPE_VIDEO_N_VOICE:I = 0x3

.field public static final CALL_TYPE_VOICE:I = 0x2

.field public static final CALL_TYPE_VOICE_N_VIDEO:I = 0x1

.field public static final CALL_TYPE_VS:I = 0x8

.field public static final CALL_TYPE_VS_RX:I = 0xa

.field public static final CALL_TYPE_VS_TX:I = 0x9

.field public static final CALL_TYPE_VT:I = 0x4

.field public static final CALL_TYPE_VT_NODIR:I = 0x7

.field public static final CALL_TYPE_VT_RX:I = 0x6

.field public static final CALL_TYPE_VT_TX:I = 0x5

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/ImsCallProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIALSTRING_NORMAL:I = 0x0

.field public static final DIALSTRING_SS_CONF:I = 0x1

.field public static final DIALSTRING_USSD:I = 0x2

.field public static final EXTRA_ADDITIONAL_CALL_INFO:Ljava/lang/String; = "AdditionalCallInfo"

.field public static final EXTRA_CALL_MODE_CHANGEABLE:Ljava/lang/String; = "call_mode_changeable"

.field public static final EXTRA_CALL_RAT_TYPE:Ljava/lang/String; = "CallRadioTech"

.field public static final EXTRA_CALL_RAT_TYPE_ALT:Ljava/lang/String; = "callRadioTech"

.field public static final EXTRA_CHILD_NUMBER:Ljava/lang/String; = "ChildNum"

.field public static final EXTRA_CNA:Ljava/lang/String; = "cna"

.field public static final EXTRA_CNAP:Ljava/lang/String; = "cnap"

.field public static final EXTRA_CODEC:Ljava/lang/String; = "Codec"

.field public static final EXTRA_CONFERENCE:Ljava/lang/String; = "conference"

.field public static final EXTRA_CONFERENCE_AVAIL:Ljava/lang/String; = "conference_avail"

.field public static final EXTRA_DIALSTRING:Ljava/lang/String; = "dialstring"

.field public static final EXTRA_DISPLAY_TEXT:Ljava/lang/String; = "DisplayText"

.field public static final EXTRA_E_CALL:Ljava/lang/String; = "e_call"

.field public static final EXTRA_IS_CALL_PULL:Ljava/lang/String; = "CallPull"

.field public static final EXTRA_OEM_EXTRAS:Ljava/lang/String; = "OemCallExtras"

.field public static final EXTRA_OI:Ljava/lang/String; = "oi"

.field public static final EXTRA_OIR:Ljava/lang/String; = "oir"

.field public static final EXTRA_REMOTE_URI:Ljava/lang/String; = "remote_uri"

.field public static final EXTRA_USSD:Ljava/lang/String; = "ussd"

.field public static final EXTRA_VMS:Ljava/lang/String; = "vms"

.field public static final OIR_DEFAULT:I = 0x0

.field public static final OIR_PRESENTATION_NOT_RESTRICTED:I = 0x2

.field public static final OIR_PRESENTATION_PAYPHONE:I = 0x4

.field public static final OIR_PRESENTATION_RESTRICTED:I = 0x1

.field public static final OIR_PRESENTATION_UNKNOWN:I = 0x3

.field public static final SERVICE_TYPE_EMERGENCY:I = 0x2

.field public static final SERVICE_TYPE_NONE:I = 0x0

.field public static final SERVICE_TYPE_NORMAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImsCallProfile"


# instance fields
.field public mCallExtras:Landroid/os/Bundle;

.field public mCallType:I

.field public mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

.field public mRestrictCause:I

.field public mServiceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 467
    new-instance v0, Landroid/telephony/ims/ImsCallProfile$1;

    invoke-direct {v0}, Landroid/telephony/ims/ImsCallProfile$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 304
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    .line 305
    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 306
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 307
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 308
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "serviceType"    # I
    .param p2, "callType"    # I

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 330
    iput p1, p0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    .line 331
    iput p2, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 332
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 333
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 334
    return-void
.end method

.method public constructor <init>(IILandroid/os/Bundle;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "serviceType"    # I
    .param p2, "callType"    # I
    .param p3, "callExtras"    # Landroid/os/Bundle;
    .param p4, "mediaProfile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 359
    iput p1, p0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    .line 360
    iput p2, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 361
    iput-object p3, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 362
    iput-object p4, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 363
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 296
    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallProfile;->readFromParcel(Landroid/os/Parcel;)V

    .line 297
    return-void
.end method

.method public static OIRToPresentation(I)I
    .locals 1
    .param p0, "oir"    # I

    .line 602
    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_0

    .line 612
    return v0

    .line 608
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 610
    :pswitch_1
    return v0

    .line 606
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 604
    :pswitch_3
    const/4 v0, 0x2

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getCallTypeFromVideoState(I)I
    .locals 5
    .param p0, "videoState"    # I

    .line 551
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telephony/ims/ImsCallProfile;->isVideoStateSet(II)Z

    move-result v0

    .line 552
    .local v0, "videoTx":Z
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/telephony/ims/ImsCallProfile;->isVideoStateSet(II)Z

    move-result v2

    .line 553
    .local v2, "videoRx":Z
    const/4 v3, 0x4

    invoke-static {p0, v3}, Landroid/telephony/ims/ImsCallProfile;->isVideoStateSet(II)Z

    move-result v4

    .line 554
    .local v4, "isPaused":Z
    if-eqz v4, :cond_0

    .line 555
    const/4 v1, 0x7

    return v1

    .line 556
    :cond_0
    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    .line 557
    const/4 v1, 0x5

    return v1

    .line 558
    :cond_1
    if-nez v0, :cond_2

    if-eqz v2, :cond_2

    .line 559
    const/4 v1, 0x6

    return v1

    .line 560
    :cond_2
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 561
    return v3

    .line 563
    :cond_3
    return v1
.end method

.method public static getVideoStateFromCallType(I)I
    .locals 2
    .param p0, "callType"    # I

    .line 522
    const/4 v0, 0x0

    .line 523
    .local v0, "videostate":I
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 537
    const/4 v0, 0x0

    goto :goto_0

    .line 528
    :pswitch_0
    const/4 v0, 0x2

    .line 529
    goto :goto_0

    .line 525
    :pswitch_1
    const/4 v0, 0x1

    .line 526
    goto :goto_0

    .line 531
    :pswitch_2
    const/4 v0, 0x3

    .line 532
    goto :goto_0

    .line 534
    :cond_0
    const/4 v0, 0x0

    .line 535
    nop

    .line 540
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getVideoStateFromImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)I
    .locals 2
    .param p0, "callProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 507
    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v0}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromCallType(I)I

    move-result v0

    .line 508
    .local v0, "videostate":I
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->isVideoPaused()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 509
    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 511
    :cond_0
    and-int/lit8 v0, v0, -0x5

    .line 513
    :goto_0
    return v0
.end method

.method private static isVideoStateSet(II)Z
    .locals 1
    .param p0, "videoState"    # I
    .param p1, "videoStateToCheck"    # I

    .line 666
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeCleanseExtras(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 644
    if-nez p1, :cond_0

    .line 645
    const/4 v0, 0x0

    return-object v0

    .line 648
    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v0

    .line 649
    .local v0, "startSize":I
    invoke-virtual {p1}, Landroid/os/Bundle;->filterValues()Landroid/os/Bundle;

    move-result-object v1

    .line 650
    .local v1, "filtered":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    .line 651
    .local v2, "endSize":I
    if-eq v0, v2, :cond_1

    .line 652
    const-string v3, "ImsCallProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "maybeCleanseExtras: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " extra values were removed - only primitive types and system parcelables are permitted."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_1
    return-object v1
.end method

.method public static presentationToOIR(I)I
    .locals 1
    .param p0, "presentation"    # I

    .line 572
    packed-switch p0, :pswitch_data_0

    .line 582
    const/4 v0, 0x0

    return v0

    .line 578
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 580
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 574
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 576
    :pswitch_3
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static presentationToOir(I)I
    .locals 1
    .param p0, "presentation"    # I

    .line 592
    invoke-static {p0}, Landroid/telephony/ims/ImsCallProfile;->presentationToOIR(I)I

    move-result v0

    return v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 461
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    .line 462
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 463
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 464
    const-class v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 465
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 448
    const/4 v0, 0x0

    return v0
.end method

.method public getCallExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 366
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 370
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 371
    return-object p2

    .line 374
    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallExtraBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 378
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getCallExtraBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 382
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 383
    return p2

    .line 386
    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getCallExtraInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 390
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCallExtraInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 394
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 395
    return p2

    .line 398
    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCallExtras()Landroid/os/Bundle;
    .locals 1

    .line 492
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getCallType()I
    .locals 1

    .line 484
    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    return v0
.end method

.method public getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 1

    .line 496
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    return-object v0
.end method

.method public getRestrictCause()I
    .locals 1

    .line 488
    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    return v0
.end method

.method public getServiceType()I
    .locals 1

    .line 480
    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    return v0
.end method

.method public isVideoCall()Z
    .locals 1

    .line 630
    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v0}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromCallType(I)I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v0

    return v0
.end method

.method public isVideoPaused()Z
    .locals 1

    .line 621
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v0, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCallExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 402
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :cond_0
    return-void
.end method

.method public setCallExtraBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 408
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 411
    :cond_0
    return-void
.end method

.method public setCallExtraInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 414
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 417
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ serviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", restrictCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mediaProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 443
    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    return-object v0
.end method

.method public updateCallExtras(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 424
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 425
    iget-object v0, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 426
    return-void
.end method

.method public updateCallType(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 420
    iget v0, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 421
    return-void
.end method

.method public updateMediaProfile(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 434
    iget-object v0, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 435
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 453
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsCallProfile;->maybeCleanseExtras(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 454
    .local v0, "filteredExtras":Landroid/os/Bundle;
    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 457
    iget-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 458
    return-void
.end method
