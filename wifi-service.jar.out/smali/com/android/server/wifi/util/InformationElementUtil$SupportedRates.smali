.class public Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;
.super Ljava/lang/Object;
.source "InformationElementUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/InformationElementUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SupportedRates"
.end annotation


# static fields
.field public static final MASK:I = 0x7f


# instance fields
.field public mRates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mValid:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1054
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1051
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mValid:Z

    .line 1055
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mRates:Ljava/util/ArrayList;

    .line 1056
    return-void
.end method

.method public static getRateFromByte(I)I
    .locals 1
    .param p0, "byteVal"    # I

    .line 1069
    and-int/lit8 p0, p0, 0x7f

    .line 1070
    sparse-switch p0, :sswitch_data_0

    .line 1101
    const/4 v0, -0x1

    return v0

    .line 1098
    :sswitch_0
    const v0, 0x337f980

    return v0

    .line 1096
    :sswitch_1
    const v0, 0x2dc6c00

    return v0

    .line 1094
    :sswitch_2
    const v0, 0x2255100

    return v0

    .line 1092
    :sswitch_3
    const v0, 0x1f78a40

    return v0

    .line 1090
    :sswitch_4
    const v0, 0x16e3600

    return v0

    .line 1088
    :sswitch_5
    const v0, 0x14fb180

    return v0

    .line 1086
    :sswitch_6
    const v0, 0x112a880

    return v0

    .line 1084
    :sswitch_7
    const v0, 0xb71b00

    return v0

    .line 1082
    :sswitch_8
    const v0, 0xa7d8c0

    return v0

    .line 1080
    :sswitch_9
    const v0, 0x895440

    return v0

    .line 1078
    :sswitch_a
    const v0, 0x5b8d80

    return v0

    .line 1076
    :sswitch_b
    const v0, 0x53ec60

    return v0

    .line 1074
    :sswitch_c
    const v0, 0x1e8480

    return v0

    .line 1072
    :sswitch_d
    const v0, 0xf4240

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_d
        0x4 -> :sswitch_c
        0xb -> :sswitch_b
        0xc -> :sswitch_a
        0x12 -> :sswitch_9
        0x16 -> :sswitch_8
        0x18 -> :sswitch_7
        0x24 -> :sswitch_6
        0x2c -> :sswitch_5
        0x30 -> :sswitch_4
        0x42 -> :sswitch_3
        0x48 -> :sswitch_2
        0x60 -> :sswitch_1
        0x6c -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public from(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 6
    .param p1, "ie"    # Landroid/net/wifi/ScanResult$InformationElement;

    .line 1114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mValid:Z

    .line 1115
    if-eqz p1, :cond_3

    iget-object v1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v1, v1

    const/16 v2, 0x8

    if-gt v1, v2, :cond_3

    iget-object v1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 1118
    :cond_0
    iget-object v1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1120
    .local v1, "data":Ljava/nio/ByteBuffer;
    nop

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 1121
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->getRateFromByte(I)I

    move-result v3

    .line 1122
    .local v3, "rate":I
    if-lez v3, :cond_1

    .line 1123
    iget-object v4, p0, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mRates:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1120
    .end local v3    # "rate":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1125
    .restart local v3    # "rate":I
    :cond_1
    return-void

    .line 1130
    .end local v0    # "i":I
    .end local v3    # "rate":I
    :cond_2
    nop

    .line 1131
    iput-boolean v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mValid:Z

    .line 1132
    return-void

    .line 1128
    :catch_0
    move-exception v0

    .line 1129
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    return-void

    .line 1116
    .end local v0    # "e":Ljava/nio/BufferUnderflowException;
    .end local v1    # "data":Ljava/nio/ByteBuffer;
    :cond_3
    :goto_1
    return-void
.end method

.method public isValid()Z
    .locals 1

    .line 1062
    iget-boolean v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mValid:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 1139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1140
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mRates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1141
    .local v2, "rate":Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%.1f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-double v7, v7

    const-wide v9, 0x412e848000000000L    # 1000000.0

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    .end local v2    # "rate":Ljava/lang/Integer;
    goto :goto_0

    .line 1143
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
