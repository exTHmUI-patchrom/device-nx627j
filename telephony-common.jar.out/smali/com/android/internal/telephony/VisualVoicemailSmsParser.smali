.class public Lcom/android/internal/telephony/VisualVoicemailSmsParser;
.super Ljava/lang/Object;
.source "VisualVoicemailSmsParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;
    }
.end annotation


# static fields
.field private static final ALLOWED_ALTERNATIVE_FORMAT_EVENT:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const-string v0, "MBOXUPDATE"

    const-string v1, "UNRECOGNIZED"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/VisualVoicemailSmsParser;->ALLOWED_ALTERNATIVE_FORMAT_EVENT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isAllowedAlternativeFormatEvent(Ljava/lang/String;)Z
    .locals 6
    .param p0, "eventType"    # Ljava/lang/String;

    .line 146
    sget-object v0, Lcom/android/internal/telephony/VisualVoicemailSmsParser;->ALLOWED_ALTERNATIVE_FORMAT_EVENT:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 147
    .local v4, "event":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 148
    const/4 v0, 0x1

    return v0

    .line 146
    .end local v4    # "event":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 151
    :cond_1
    return v2
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;
    .locals 6
    .param p0, "clientPrefix"    # Ljava/lang/String;
    .param p1, "smsBody"    # Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    return-object v0

    .line 58
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 59
    .local v1, "prefixEnd":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_1

    .line 60
    return-object v0

    .line 62
    :cond_1
    const-string v2, ":"

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 63
    .local v2, "eventTypeEnd":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 64
    return-object v0

    .line 66
    :cond_2
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "eventType":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/VisualVoicemailSmsParser;->parseSmsBody(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 68
    .local v4, "fields":Landroid/os/Bundle;
    if-nez v4, :cond_3

    .line 69
    return-object v0

    .line 71
    :cond_3
    new-instance v5, Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;

    invoke-direct {v5, v3, v4}, Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 72
    .end local v1    # "prefixEnd":I
    .end local v2    # "eventTypeEnd":I
    .end local v3    # "eventType":Ljava/lang/String;
    .end local v4    # "fields":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    return-object v0
.end method

.method public static parseAlternativeFormat(Ljava/lang/String;)Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;
    .locals 5
    .param p0, "smsBody"    # Ljava/lang/String;

    .line 127
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 128
    .local v1, "eventTypeEnd":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 129
    return-object v0

    .line 131
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "eventType":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/VisualVoicemailSmsParser;->isAllowedAlternativeFormatEvent(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 133
    return-object v0

    .line 135
    :cond_1
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/VisualVoicemailSmsParser;->parseSmsBody(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 136
    .local v3, "fields":Landroid/os/Bundle;
    if-nez v3, :cond_2

    .line 137
    return-object v0

    .line 139
    :cond_2
    new-instance v4, Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;

    invoke-direct {v4, v2, v3}, Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 140
    .end local v1    # "eventTypeEnd":I
    .end local v2    # "eventType":Ljava/lang/String;
    .end local v3    # "fields":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    return-object v0
.end method

.method private static parseSmsBody(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .param p0, "message"    # Ljava/lang/String;

    .line 90
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    .local v0, "keyValues":Landroid/os/Bundle;
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "entries":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 93
    .local v5, "entry":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    .line 94
    goto :goto_1

    .line 101
    :cond_0
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 102
    .local v6, "separatorIndex":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    if-nez v6, :cond_1

    goto :goto_2

    .line 108
    :cond_1
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 109
    .local v7, "key":Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 110
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .end local v5    # "entry":Ljava/lang/String;
    .end local v6    # "separatorIndex":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 106
    .restart local v5    # "entry":Ljava/lang/String;
    .restart local v6    # "separatorIndex":I
    :cond_2
    :goto_2
    const/4 v2, 0x0

    return-object v2

    .line 113
    .end local v5    # "entry":Ljava/lang/String;
    .end local v6    # "separatorIndex":I
    :cond_3
    return-object v0
.end method
