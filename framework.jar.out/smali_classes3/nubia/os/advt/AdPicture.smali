.class public Lnubia/os/advt/AdPicture;
.super Ljava/lang/Object;
.source "AdPicture.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lnubia/os/advt/AdPicture;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field ad_id:J

.field hBitmap:Landroid/graphics/Bitmap;

.field hPic_id:Ljava/lang/String;

.field hPic_path:Ljava/lang/String;

.field wBitmap:Landroid/graphics/Bitmap;

.field wPic_id:Ljava/lang/String;

.field wPic_path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Lnubia/os/advt/AdPicture$1;

    invoke-direct {v0}, Lnubia/os/advt/AdPicture$1;-><init>()V

    sput-object v0, Lnubia/os/advt/AdPicture;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lnubia/os/advt/AdPicture;->hBitmap:Landroid/graphics/Bitmap;

    .line 78
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lnubia/os/advt/AdPicture;->wBitmap:Landroid/graphics/Bitmap;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnubia/os/advt/AdPicture;->hPic_path:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnubia/os/advt/AdPicture;->wPic_path:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnubia/os/advt/AdPicture;->hPic_id:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnubia/os/advt/AdPicture;->wPic_id:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lnubia/os/advt/AdPicture;->ad_id:J

    .line 85
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public getAd_id()J
    .locals 2

    .line 117
    iget-wide v0, p0, Lnubia/os/advt/AdPicture;->ad_id:J

    return-wide v0
.end method

.method public gethBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 25
    iget-object v0, p0, Lnubia/os/advt/AdPicture;->hBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public gethPic_id()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lnubia/os/advt/AdPicture;->hPic_id:Ljava/lang/String;

    return-object v0
.end method

.method public gethPic_path()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lnubia/os/advt/AdPicture;->hPic_path:Ljava/lang/String;

    return-object v0
.end method

.method public getwBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 33
    iget-object v0, p0, Lnubia/os/advt/AdPicture;->wBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getwPic_id()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lnubia/os/advt/AdPicture;->wPic_id:Ljava/lang/String;

    return-object v0
.end method

.method public getwPic_path()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lnubia/os/advt/AdPicture;->wPic_path:Ljava/lang/String;

    return-object v0
.end method

.method public setAd_id(J)V
    .locals 0
    .param p1, "ad_id"    # J

    .line 121
    iput-wide p1, p0, Lnubia/os/advt/AdPicture;->ad_id:J

    .line 122
    return-void
.end method

.method public sethBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "hBitmap"    # Landroid/graphics/Bitmap;

    .line 29
    iput-object p1, p0, Lnubia/os/advt/AdPicture;->hBitmap:Landroid/graphics/Bitmap;

    .line 30
    return-void
.end method

.method public sethPic_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "hPic_id"    # Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lnubia/os/advt/AdPicture;->hPic_id:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public sethPic_path(Ljava/lang/String;)V
    .locals 0
    .param p1, "hPic_path"    # Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lnubia/os/advt/AdPicture;->hPic_path:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setwBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "wBitmap"    # Landroid/graphics/Bitmap;

    .line 37
    iput-object p1, p0, Lnubia/os/advt/AdPicture;->wBitmap:Landroid/graphics/Bitmap;

    .line 38
    return-void
.end method

.method public setwPic_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "wPic_id"    # Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lnubia/os/advt/AdPicture;->wPic_id:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setwPic_path(Ljava/lang/String;)V
    .locals 0
    .param p1, "wPic_path"    # Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lnubia/os/advt/AdPicture;->wPic_path:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 89
    iget-object v0, p0, Lnubia/os/advt/AdPicture;->hBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 90
    iget-object v0, p0, Lnubia/os/advt/AdPicture;->wBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 91
    iget-object v0, p0, Lnubia/os/advt/AdPicture;->hPic_path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lnubia/os/advt/AdPicture;->wPic_path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lnubia/os/advt/AdPicture;->hPic_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lnubia/os/advt/AdPicture;->wPic_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-wide v0, p0, Lnubia/os/advt/AdPicture;->ad_id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 97
    return-void
.end method
