.class public final Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
.super Ljava/lang/Object;
.source "SmsBroadcastConfigInfo.java"


# instance fields
.field private mFromCodeScheme:I

.field private mFromServiceId:I

.field private mSelected:Z

.field private mToCodeScheme:I

.field private mToServiceId:I


# direct methods
.method public constructor <init>(IIIIZ)V
    .locals 0
    .param p1, "fromId"    # I
    .param p2, "toId"    # I
    .param p3, "fromScheme"    # I
    .param p4, "toScheme"    # I
    .param p5, "selected"    # Z

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mFromServiceId:I

    .line 50
    iput p2, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mToServiceId:I

    .line 51
    iput p3, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mFromCodeScheme:I

    .line 52
    iput p4, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mToCodeScheme:I

    .line 53
    iput-boolean p5, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mSelected:Z

    .line 54
    return-void
.end method


# virtual methods
.method public getFromCodeScheme()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mFromCodeScheme:I

    return v0
.end method

.method public getFromServiceId()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mFromServiceId:I

    return v0
.end method

.method public getToCodeScheme()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mToCodeScheme:I

    return v0
.end method

.method public getToServiceId()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mToServiceId:I

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mSelected:Z

    return v0
.end method

.method public setFromCodeScheme(I)V
    .locals 0
    .param p1, "fromCodeScheme"    # I

    .line 88
    iput p1, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mFromCodeScheme:I

    .line 89
    return-void
.end method

.method public setFromServiceId(I)V
    .locals 0
    .param p1, "fromServiceId"    # I

    .line 60
    iput p1, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mFromServiceId:I

    .line 61
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .line 116
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mSelected:Z

    .line 117
    return-void
.end method

.method public setToCodeScheme(I)V
    .locals 0
    .param p1, "toCodeScheme"    # I

    .line 102
    iput p1, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mToCodeScheme:I

    .line 103
    return-void
.end method

.method public setToServiceId(I)V
    .locals 0
    .param p1, "toServiceId"    # I

    .line 74
    iput p1, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mToServiceId:I

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmsBroadcastConfigInfo: Id ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mFromServiceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mToServiceId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] Code ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mFromCodeScheme:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mToCodeScheme:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->mSelected:Z

    if-eqz v1, :cond_0

    const-string v1, "ENABLED"

    goto :goto_0

    :cond_0
    const-string v1, "DISABLED"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    return-object v0
.end method
