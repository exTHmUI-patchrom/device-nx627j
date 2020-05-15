.class public Lcom/android/internal/telephony/DriverCall;
.super Ljava/lang/Object;
.source "DriverCall.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DriverCall$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/internal/telephony/DriverCall;",
        ">;"
    }
.end annotation


# static fields
.field public static final AUDIO_QUALITY_AMR:I = 0x1

.field public static final AUDIO_QUALITY_AMR_WB:I = 0x2

.field public static final AUDIO_QUALITY_EVRC:I = 0x6

.field public static final AUDIO_QUALITY_EVRC_B:I = 0x7

.field public static final AUDIO_QUALITY_EVRC_NW:I = 0x9

.field public static final AUDIO_QUALITY_EVRC_WB:I = 0x8

.field public static final AUDIO_QUALITY_GSM_EFR:I = 0x3

.field public static final AUDIO_QUALITY_GSM_FR:I = 0x4

.field public static final AUDIO_QUALITY_GSM_HR:I = 0x5

.field public static final AUDIO_QUALITY_UNSPECIFIED:I = 0x0

.field static final LOG_TAG:Ljava/lang/String; = "DriverCall"


# instance fields
.field public TOA:I

.field public als:I

.field public audioQuality:I

.field public index:I

.field public isMT:Z

.field public isMpty:Z

.field public isVoice:Z

.field public isVoicePrivacy:Z

.field public name:Ljava/lang/String;

.field public namePresentation:I

.field public number:Ljava/lang/String;

.field public numberPresentation:I

.field public state:Lcom/android/internal/telephony/DriverCall$State;

.field public uusInfo:Lcom/android/internal/telephony/UUSInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/DriverCall;->audioQuality:I

    .line 127
    return-void
.end method

.method static fromCLCCLine(Ljava/lang/String;)Lcom/android/internal/telephony/DriverCall;
    .locals 7
    .param p0, "line"    # Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 86
    .local v0, "ret":Lcom/android/internal/telephony/DriverCall;
    new-instance v1, Lcom/android/internal/telephony/ATResponseParser;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ATResponseParser;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, "p":Lcom/android/internal/telephony/ATResponseParser;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextInt()I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 90
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextBoolean()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 91
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextInt()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 93
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextInt()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 94
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextBoolean()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 97
    iput v4, v0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 99
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->hasMore()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 102
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 104
    iget-object v3, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 105
    iput-object v2, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 108
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextInt()I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 113
    iget-object v3, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v4, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v3, v4}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/internal/telephony/ATParseEx; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_2
    nop

    .line 122
    return-object v0

    .line 117
    :catch_0
    move-exception v3

    .line 118
    .local v3, "ex":Lcom/android/internal/telephony/ATParseEx;
    const-string v4, "DriverCall"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid CLCC line: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-object v2
.end method

.method public static presentationFromCLIP(I)I
    .locals 3
    .param p0, "cli"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/ATParseEx;
        }
    .end annotation

    .line 162
    packed-switch p0, :pswitch_data_0

    .line 168
    new-instance v0, Lcom/android/internal/telephony/ATParseEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal presentation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ATParseEx;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 165
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 164
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 163
    :pswitch_3
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;
    .locals 3
    .param p0, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/ATParseEx;
        }
    .end annotation

    .line 147
    packed-switch p0, :pswitch_data_0

    .line 155
    new-instance v0, Lcom/android/internal/telephony/ATParseEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal call state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ATParseEx;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    return-object v0

    .line 152
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    return-object v0

    .line 151
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    return-object v0

    .line 150
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    return-object v0

    .line 149
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    return-object v0

    .line 148
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public compareTo(Lcom/android/internal/telephony/DriverCall;)I
    .locals 2
    .param p1, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .line 179
    iget v0, p0, Lcom/android/internal/telephony/DriverCall;->index:I

    iget v1, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    if-ge v0, v1, :cond_0

    .line 180
    const/4 v0, -0x1

    return v0

    .line 181
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/DriverCall;->index:I

    iget v1, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    if-ne v0, v1, :cond_1

    .line 182
    const/4 v0, 0x0

    return v0

    .line 184
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 26
    check-cast p1, Lcom/android/internal/telephony/DriverCall;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DriverCall;->compareTo(Lcom/android/internal/telephony/DriverCall;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/DriverCall;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",toa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-boolean v1, p0, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    if-eqz v1, :cond_0

    const-string v1, "conf"

    goto :goto_0

    :cond_0
    const-string v1, "norm"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-boolean v1, p0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-eqz v1, :cond_1

    const-string v1, "mt"

    goto :goto_1

    :cond_1
    const-string v1, "mo"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/DriverCall;->als:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-boolean v1, p0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    if-eqz v1, :cond_2

    const-string v1, "voc"

    goto :goto_2

    :cond_2
    const-string v1, "nonvoc"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-boolean v1, p0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v1, :cond_3

    const-string v1, "evp"

    goto :goto_3

    :cond_3
    const-string v1, "noevp"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",,cli="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",audioQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/DriverCall;->audioQuality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    return-object v0
.end method
