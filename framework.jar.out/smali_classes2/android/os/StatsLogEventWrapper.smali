.class public final Landroid/os/StatsLogEventWrapper;
.super Ljava/lang/Object;
.source "StatsLogEventWrapper.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private static final EVENT_TYPE_FLOAT:I = 0x4

.field private static final EVENT_TYPE_INT:I = 0x0

.field private static final EVENT_TYPE_LIST:I = 0x3

.field private static final EVENT_TYPE_LONG:I = 0x1

.field private static final EVENT_TYPE_STRING:I = 0x2

.field private static final STATS_BUFFER_TAG_ID:I = 0x73746174


# instance fields
.field private mStorage:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Landroid/os/StatsLogEventWrapper$1;

    invoke-direct {v0}, Landroid/os/StatsLogEventWrapper$1;-><init>()V

    sput-object v0, Landroid/os/StatsLogEventWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JII)V
    .locals 2
    .param p1, "elapsedNanos"    # J
    .param p3, "tag"    # I
    .param p4, "fields"    # I

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Landroid/os/StatsLogEventWrapper;->mStorage:Ljava/io/ByteArrayOutputStream;

    .line 53
    const v0, 0x73746174

    invoke-direct {p0, v0}, Landroid/os/StatsLogEventWrapper;->write4Bytes(I)V

    .line 54
    iget-object v0, p0, Landroid/os/StatsLogEventWrapper;->mStorage:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 55
    iget-object v0, p0, Landroid/os/StatsLogEventWrapper;->mStorage:Ljava/io/ByteArrayOutputStream;

    add-int/lit8 v1, p4, 0x2

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 57
    invoke-virtual {p0, p1, p2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 59
    invoke-virtual {p0, p3}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 60
    return-void
.end method

.method private write4Bytes(I)V
    .locals 2
    .param p1, "val"    # I

    .line 83
    iget-object v0, p0, Landroid/os/StatsLogEventWrapper;->mStorage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 84
    iget-object v0, p0, Landroid/os/StatsLogEventWrapper;->mStorage:Ljava/io/ByteArrayOutputStream;

    ushr-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 85
    iget-object v0, p0, Landroid/os/StatsLogEventWrapper;->mStorage:Ljava/io/ByteArrayOutputStream;

    ushr-int/lit8 v1, p1, 0x10

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 86
    iget-object v0, p0, Landroid/os/StatsLogEventWrapper;->mStorage:Ljava/io/ByteArrayOutputStream;

    ushr-int/lit8 v1, p1, 0x18

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 87
    return-void
.end method

.method private write8Bytes(J)V
    .locals 2
    .param p1, "val"    # J

    .line 90
    const-wide/16 v0, -0x1

    and-long/2addr v0, p1

    long-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/os/StatsLogEventWrapper;->write4Bytes(I)V

    .line 91
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/os/StatsLogEventWrapper;->write4Bytes(I)V

    .line 92
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public writeFloat(F)V
    .locals 3
    .param p1, "val"    # F

    .line 114
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 115
    .local v0, "v":I
    iget-object v1, p0, Landroid/os/StatsLogEventWrapper;->mStorage:Ljava/io/ByteArrayOutputStream;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 116
    invoke-direct {p0, v0}, Landroid/os/StatsLogEventWrapper;->write4Bytes(I)V

    .line 117
    return-void
.end method

.method public writeInt(I)V
    .locals 2
    .param p1, "val"    # I

    .line 98
    iget-object v0, p0, Landroid/os/StatsLogEventWrapper;->mStorage:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 99
    invoke-direct {p0, p1}, Landroid/os/StatsLogEventWrapper;->write4Bytes(I)V

    .line 100
    return-void
.end method

.method public writeLong(J)V
    .locals 2
    .param p1, "val"    # J

    .line 106
    iget-object v0, p0, Landroid/os/StatsLogEventWrapper;->mStorage:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 107
    invoke-direct {p0, p1, p2}, Landroid/os/StatsLogEventWrapper;->write8Bytes(J)V

    .line 108
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 4
    .param p1, "val"    # Ljava/lang/String;

    .line 123
    iget-object v0, p0, Landroid/os/StatsLogEventWrapper;->mStorage:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/os/StatsLogEventWrapper;->write4Bytes(I)V

    .line 125
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 126
    .local v0, "bytes":[B
    iget-object v1, p0, Landroid/os/StatsLogEventWrapper;->mStorage:Ljava/io/ByteArrayOutputStream;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 127
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 134
    iget-object v0, p0, Landroid/os/StatsLogEventWrapper;->mStorage:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 135
    iget-object v0, p0, Landroid/os/StatsLogEventWrapper;->mStorage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 136
    return-void
.end method
