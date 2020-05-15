.class public final Landroid/net/IpSecUdpEncapResponse;
.super Ljava/lang/Object;
.source "IpSecUdpEncapResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/IpSecUdpEncapResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "IpSecUdpEncapResponse"


# instance fields
.field public final fileDescriptor:Landroid/os/ParcelFileDescriptor;

.field public final port:I

.field public final resourceId:I

.field public final status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    new-instance v0, Landroid/net/IpSecUdpEncapResponse$1;

    invoke-direct {v0}, Landroid/net/IpSecUdpEncapResponse$1;-><init>()V

    sput-object v0, Landroid/net/IpSecUdpEncapResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "inStatus"    # I

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-eqz p1, :cond_0

    .line 62
    iput p1, p0, Landroid/net/IpSecUdpEncapResponse;->status:I

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/IpSecUdpEncapResponse;->resourceId:I

    .line 64
    iput v0, p0, Landroid/net/IpSecUdpEncapResponse;->port:I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/IpSecUdpEncapResponse;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 66
    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Valid status implies other args must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(IIILjava/io/FileDescriptor;)V
    .locals 2
    .param p1, "inStatus"    # I
    .param p2, "inResourceId"    # I
    .param p3, "inPort"    # I
    .param p4, "inFd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    if-nez p1, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Valid status implies FD must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    :goto_0
    iput p1, p0, Landroid/net/IpSecUdpEncapResponse;->status:I

    .line 74
    iput p2, p0, Landroid/net/IpSecUdpEncapResponse;->resourceId:I

    .line 75
    iput p3, p0, Landroid/net/IpSecUdpEncapResponse;->port:I

    .line 76
    iget v0, p0, Landroid/net/IpSecUdpEncapResponse;->status:I

    if-nez v0, :cond_2

    invoke-static {p4}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Landroid/net/IpSecUdpEncapResponse;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 77
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecUdpEncapResponse;->status:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecUdpEncapResponse;->resourceId:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecUdpEncapResponse;->port:I

    .line 83
    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/net/IpSecUdpEncapResponse;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/IpSecUdpEncapResponse$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/net/IpSecUdpEncapResponse$1;

    .line 30
    invoke-direct {p0, p1}, Landroid/net/IpSecUdpEncapResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 47
    iget-object v0, p0, Landroid/net/IpSecUdpEncapResponse;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 52
    iget v0, p0, Landroid/net/IpSecUdpEncapResponse;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget v0, p0, Landroid/net/IpSecUdpEncapResponse;->resourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v0, p0, Landroid/net/IpSecUdpEncapResponse;->port:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-object v0, p0, Landroid/net/IpSecUdpEncapResponse;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 56
    return-void
.end method
