.class public Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;
.super Ljava/lang/Object;
.source "CdmaInformationRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CdmaNumberInfoRec"
.end annotation


# instance fields
.field public id:I

.field public number:Ljava/lang/String;

.field public numberPlan:B

.field public numberType:B

.field public pi:B

.field public si:B


# direct methods
.method public constructor <init>(ILjava/lang/String;IIII)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "numberType"    # I
    .param p4, "numberPlan"    # I
    .param p5, "pi"    # I
    .param p6, "si"    # I

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;->number:Ljava/lang/String;

    .line 188
    int-to-byte v0, p3

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;->numberType:B

    .line 189
    int-to-byte v0, p4

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;->numberPlan:B

    .line 190
    int-to-byte v0, p5

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;->pi:B

    .line 191
    int-to-byte v0, p6

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;->si:B

    .line 192
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CdmaNumberInfoRec: { id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;->id:I

    .line 197
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->idToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", number: <MASKED>, numberType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;->numberType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", numberPlan: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;->numberPlan:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;->pi:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", si: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;->si:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    return-object v0
.end method
