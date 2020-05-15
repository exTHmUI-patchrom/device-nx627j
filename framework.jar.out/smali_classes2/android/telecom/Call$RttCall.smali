.class public final Landroid/telecom/Call$RttCall;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RttCall"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Call$RttCall$RttAudioMode;
    }
.end annotation


# static fields
.field private static final READ_BUFFER_SIZE:I = 0x3e8

.field public static final RTT_MODE_FULL:I = 0x1

.field public static final RTT_MODE_HCO:I = 0x2

.field public static final RTT_MODE_INVALID:I = 0x0

.field public static final RTT_MODE_VCO:I = 0x3


# instance fields
.field private final mInCallAdapter:Landroid/telecom/InCallAdapter;

.field private mReadBuffer:[C

.field private mReceiveStream:Ljava/io/InputStreamReader;

.field private mRttMode:I

.field private final mTelecomCallId:Ljava/lang/String;

.field private mTransmitStream:Ljava/io/OutputStreamWriter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStreamReader;Ljava/io/OutputStreamWriter;ILandroid/telecom/InCallAdapter;)V
    .locals 1
    .param p1, "telecomCallId"    # Ljava/lang/String;
    .param p2, "receiveStream"    # Ljava/io/InputStreamReader;
    .param p3, "transmitStream"    # Ljava/io/OutputStreamWriter;
    .param p4, "mode"    # I
    .param p5, "inCallAdapter"    # Landroid/telecom/InCallAdapter;

    .line 1179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1173
    const/16 v0, 0x3e8

    new-array v0, v0, [C

    iput-object v0, p0, Landroid/telecom/Call$RttCall;->mReadBuffer:[C

    .line 1180
    iput-object p1, p0, Landroid/telecom/Call$RttCall;->mTelecomCallId:Ljava/lang/String;

    .line 1181
    iput-object p2, p0, Landroid/telecom/Call$RttCall;->mReceiveStream:Ljava/io/InputStreamReader;

    .line 1182
    iput-object p3, p0, Landroid/telecom/Call$RttCall;->mTransmitStream:Ljava/io/OutputStreamWriter;

    .line 1183
    iput p4, p0, Landroid/telecom/Call$RttCall;->mRttMode:I

    .line 1184
    iput-object p5, p0, Landroid/telecom/Call$RttCall;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    .line 1185
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1267
    :try_start_0
    iget-object v0, p0, Landroid/telecom/Call$RttCall;->mReceiveStream:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1270
    goto :goto_0

    .line 1268
    :catch_0
    move-exception v0

    .line 1272
    :goto_0
    :try_start_1
    iget-object v0, p0, Landroid/telecom/Call$RttCall;->mTransmitStream:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1275
    goto :goto_1

    .line 1273
    :catch_1
    move-exception v0

    .line 1276
    :goto_1
    return-void
.end method

.method public getRttAudioMode()I
    .locals 1

    .line 1193
    iget v0, p0, Landroid/telecom/Call$RttCall;->mRttMode:I

    return v0
.end method

.method public read()Ljava/lang/String;
    .locals 5

    .line 1232
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/telecom/Call$RttCall;->mReceiveStream:Ljava/io/InputStreamReader;

    iget-object v3, p0, Landroid/telecom/Call$RttCall;->mReadBuffer:[C

    const/16 v4, 0x3e8

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v2

    .line 1233
    .local v2, "numRead":I
    if-gez v2, :cond_0

    .line 1234
    return-object v0

    .line 1236
    :cond_0
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Landroid/telecom/Call$RttCall;->mReadBuffer:[C

    invoke-direct {v3, v4, v1, v2}, Ljava/lang/String;-><init>([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 1237
    .end local v2    # "numRead":I
    :catch_0
    move-exception v2

    .line 1238
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Exception encountered when reading from InputStreamReader: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1239
    return-object v0
.end method

.method public readImmediately()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1250
    iget-object v0, p0, Landroid/telecom/Call$RttCall;->mReceiveStream:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->ready()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1251
    iget-object v0, p0, Landroid/telecom/Call$RttCall;->mReceiveStream:Ljava/io/InputStreamReader;

    iget-object v2, p0, Landroid/telecom/Call$RttCall;->mReadBuffer:[C

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v0

    .line 1252
    .local v0, "numRead":I
    if-gez v0, :cond_0

    .line 1253
    return-object v1

    .line 1255
    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/telecom/Call$RttCall;->mReadBuffer:[C

    invoke-direct {v1, v2, v4, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 1257
    .end local v0    # "numRead":I
    :cond_1
    return-object v1
.end method

.method public setRttMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 1203
    iget-object v0, p0, Landroid/telecom/Call$RttCall;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call$RttCall;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->setRttMode(Ljava/lang/String;I)V

    .line 1204
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1216
    iget-object v0, p0, Landroid/telecom/Call$RttCall;->mTransmitStream:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1217
    iget-object v0, p0, Landroid/telecom/Call$RttCall;->mTransmitStream:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 1218
    return-void
.end method
