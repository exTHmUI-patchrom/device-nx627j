.class public final Landroid/telephony/mbms/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/mbms/FileInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mimeType:Ljava/lang/String;

.field private final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Landroid/telephony/mbms/FileInfo$1;

    invoke-direct {v0}, Landroid/telephony/mbms/FileInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/mbms/FileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroid/telephony/mbms/FileInfo;->uri:Landroid/net/Uri;

    .line 56
    iput-object p2, p0, Landroid/telephony/mbms/FileInfo;->mimeType:Ljava/lang/String;

    .line 57
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/mbms/FileInfo;->uri:Landroid/net/Uri;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/FileInfo;->mimeType:Ljava/lang/String;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/mbms/FileInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/telephony/mbms/FileInfo$1;

    .line 30
    invoke-direct {p0, p1}, Landroid/telephony/mbms/FileInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 92
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 93
    return v0

    .line 95
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 99
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/mbms/FileInfo;

    .line 100
    .local v2, "fileInfo":Landroid/telephony/mbms/FileInfo;
    iget-object v3, p0, Landroid/telephony/mbms/FileInfo;->uri:Landroid/net/Uri;

    iget-object v4, v2, Landroid/telephony/mbms/FileInfo;->uri:Landroid/net/Uri;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/mbms/FileInfo;->mimeType:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/mbms/FileInfo;->mimeType:Ljava/lang/String;

    .line 101
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 100
    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 96
    .end local v2    # "fileInfo":Landroid/telephony/mbms/FileInfo;
    :cond_3
    :goto_1
    return v1
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Landroid/telephony/mbms/FileInfo;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 80
    iget-object v0, p0, Landroid/telephony/mbms/FileInfo;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 106
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/telephony/mbms/FileInfo;->uri:Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/mbms/FileInfo;->mimeType:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 66
    iget-object v0, p0, Landroid/telephony/mbms/FileInfo;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 67
    iget-object v0, p0, Landroid/telephony/mbms/FileInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    return-void
.end method
