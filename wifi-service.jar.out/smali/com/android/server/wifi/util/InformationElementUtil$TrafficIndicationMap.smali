.class public Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;
.super Ljava/lang/Object;
.source "InformationElementUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/InformationElementUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrafficIndicationMap"
.end annotation


# static fields
.field private static final MAX_TIM_LENGTH:I = 0xfe


# instance fields
.field public mBitmapControl:I

.field public mDtimCount:I

.field public mDtimPeriod:I

.field public mLength:I

.field private mValid:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 946
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 948
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mValid:Z

    .line 949
    iput v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mLength:I

    .line 950
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mDtimCount:I

    .line 952
    iput v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mDtimPeriod:I

    .line 953
    iput v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mBitmapControl:I

    return-void
.end method


# virtual methods
.method public from(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 3
    .param p1, "ie"    # Landroid/net/wifi/ScanResult$InformationElement;

    .line 971
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mValid:Z

    .line 972
    if-eqz p1, :cond_2

    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    if-nez v0, :cond_0

    goto :goto_0

    .line 973
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v0, v0

    iput v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mLength:I

    .line 974
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 976
    .local v0, "data":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mDtimCount:I

    .line 977
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mDtimPeriod:I

    .line 978
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mBitmapControl:I

    .line 980
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    nop

    .line 984
    iget v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mLength:I

    const/16 v2, 0xfe

    if-gt v1, v2, :cond_1

    iget v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mDtimPeriod:I

    if-lez v1, :cond_1

    .line 985
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mValid:Z

    .line 987
    :cond_1
    return-void

    .line 981
    :catch_0
    move-exception v1

    .line 982
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    return-void

    .line 972
    .end local v0    # "data":Ljava/nio/ByteBuffer;
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    :cond_2
    :goto_0
    return-void
.end method

.method public isValid()Z
    .locals 1

    .line 959
    iget-boolean v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mValid:Z

    return v0
.end method
