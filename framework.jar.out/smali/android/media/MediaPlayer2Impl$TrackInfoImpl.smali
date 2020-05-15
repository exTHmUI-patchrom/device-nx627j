.class public final Landroid/media/MediaPlayer2Impl$TrackInfoImpl;
.super Landroid/media/MediaPlayer2$TrackInfo;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackInfoImpl"
.end annotation


# static fields
.field static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/MediaPlayer2Impl$TrackInfoImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mFormat:Landroid/media/MediaFormat;

.field final mTrackType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2022
    new-instance v0, Landroid/media/MediaPlayer2Impl$TrackInfoImpl$1;

    invoke-direct {v0}, Landroid/media/MediaPlayer2Impl$TrackInfoImpl$1;-><init>()V

    sput-object v0, Landroid/media/MediaPlayer2Impl$TrackInfoImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/media/MediaFormat;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "format"    # Landroid/media/MediaFormat;

    .line 1968
    invoke-direct {p0}, Landroid/media/MediaPlayer2$TrackInfo;-><init>()V

    .line 1969
    iput p1, p0, Landroid/media/MediaPlayer2Impl$TrackInfoImpl;->mTrackType:I

    .line 1970
    iput-object p2, p0, Landroid/media/MediaPlayer2Impl$TrackInfoImpl;->mFormat:Landroid/media/MediaFormat;

    .line 1971
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1952
    invoke-direct {p0}, Landroid/media/MediaPlayer2$TrackInfo;-><init>()V

    .line 1953
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaPlayer2Impl$TrackInfoImpl;->mTrackType:I

    .line 1956
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1957
    .local v0, "mime":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1958
    .local v1, "language":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/media/MediaFormat;->createSubtitleFormat(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaFormat;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaPlayer2Impl$TrackInfoImpl;->mFormat:Landroid/media/MediaFormat;

    .line 1960
    iget v2, p0, Landroid/media/MediaPlayer2Impl$TrackInfoImpl;->mTrackType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 1961
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$TrackInfoImpl;->mFormat:Landroid/media/MediaFormat;

    const-string v3, "is-autoselect"

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1962
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$TrackInfoImpl;->mFormat:Landroid/media/MediaFormat;

    const-string v3, "is-default"

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1963
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$TrackInfoImpl;->mFormat:Landroid/media/MediaFormat;

    const-string v3, "is-forced-subtitle"

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1965
    :cond_0
    return-void
.end method


# virtual methods
.method public getFormat()Landroid/media/MediaFormat;
    .locals 2

    .line 1942
    iget v0, p0, Landroid/media/MediaPlayer2Impl$TrackInfoImpl;->mTrackType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/media/MediaPlayer2Impl$TrackInfoImpl;->mTrackType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1946
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 1944
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TrackInfoImpl;->mFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 2

    .line 1932
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TrackInfoImpl;->mFormat:Landroid/media/MediaFormat;

    const-string/jumbo v1, "language"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1933
    .local v0, "language":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string/jumbo v1, "und"

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getTrackType()I
    .locals 1

    .line 1921
    iget v0, p0, Landroid/media/MediaPlayer2Impl$TrackInfoImpl;->mTrackType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1994
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1995
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1996
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1997
    iget v1, p0, Landroid/media/MediaPlayer2Impl$TrackInfoImpl;->mTrackType:I

    packed-switch v1, :pswitch_data_0

    .line 2011
    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2008
    :pswitch_0
    const-string v1, "SUBTITLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2009
    goto :goto_0

    .line 2005
    :pswitch_1
    const-string v1, "TIMEDTEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2006
    goto :goto_0

    .line 2002
    :pswitch_2
    const-string v1, "AUDIO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2003
    goto :goto_0

    .line 1999
    :pswitch_3
    const-string v1, "VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2000
    nop

    .line 2014
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$TrackInfoImpl;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {v2}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2015
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2016
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1981
    iget v0, p0, Landroid/media/MediaPlayer2Impl$TrackInfoImpl;->mTrackType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1982
    invoke-virtual {p0}, Landroid/media/MediaPlayer2Impl$TrackInfoImpl;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1984
    iget v0, p0, Landroid/media/MediaPlayer2Impl$TrackInfoImpl;->mTrackType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1985
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TrackInfoImpl;->mFormat:Landroid/media/MediaFormat;

    const-string/jumbo v1, "mime"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1986
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TrackInfoImpl;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "is-autoselect"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1987
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TrackInfoImpl;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "is-default"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1988
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TrackInfoImpl;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "is-forced-subtitle"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1990
    :cond_0
    return-void
.end method
