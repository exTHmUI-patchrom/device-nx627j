.class public Lnubia/os/advt/AdWhiteItem;
.super Ljava/lang/Object;
.source "AdWhiteItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lnubia/os/advt/AdWhiteItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ad_id:J

.field private ad_type:I

.field private appid:Ljava/lang/String;

.field private auto_close_interval:J

.field private auto_close_wait_interval:J

.field private click_wait_interval:J

.field private close_wait_interval:J

.field private id:J

.field isShowFlag:Z

.field isShowLogo:Z

.field private package_name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lnubia/os/advt/AdWhiteItem$1;

    invoke-direct {v0}, Lnubia/os/advt/AdWhiteItem$1;-><init>()V

    sput-object v0, Lnubia/os/advt/AdWhiteItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnubia/os/advt/AdWhiteItem;->id:J

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnubia/os/advt/AdWhiteItem;->isShowFlag:Z

    .line 31
    iput-boolean v0, p0, Lnubia/os/advt/AdWhiteItem;->isShowLogo:Z

    .line 34
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnubia/os/advt/AdWhiteItem;->id:J

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnubia/os/advt/AdWhiteItem;->isShowFlag:Z

    .line 31
    iput-boolean v0, p0, Lnubia/os/advt/AdWhiteItem;->isShowLogo:Z

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lnubia/os/advt/AdWhiteItem;->id:J

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnubia/os/advt/AdWhiteItem;->package_name:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnubia/os/advt/AdWhiteItem;->appid:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lnubia/os/advt/AdWhiteItem;->ad_id:J

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lnubia/os/advt/AdWhiteItem;->ad_type:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lnubia/os/advt/AdWhiteItem;->close_wait_interval:J

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lnubia/os/advt/AdWhiteItem;->click_wait_interval:J

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lnubia/os/advt/AdWhiteItem;->auto_close_wait_interval:J

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lnubia/os/advt/AdWhiteItem;->auto_close_interval:J

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lnubia/os/advt/AdWhiteItem;->isShowFlag:Z

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lnubia/os/advt/AdWhiteItem;->isShowLogo:Z

    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public getAd_id()J
    .locals 2

    .line 130
    iget-wide v0, p0, Lnubia/os/advt/AdWhiteItem;->ad_id:J

    return-wide v0
.end method

.method public getAd_type()I
    .locals 1

    .line 138
    iget v0, p0, Lnubia/os/advt/AdWhiteItem;->ad_type:I

    return v0
.end method

.method public getAppid()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lnubia/os/advt/AdWhiteItem;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public getAuto_close_interval()J
    .locals 2

    .line 98
    iget-wide v0, p0, Lnubia/os/advt/AdWhiteItem;->auto_close_interval:J

    return-wide v0
.end method

.method public getAuto_close_wait_interval()J
    .locals 2

    .line 90
    iget-wide v0, p0, Lnubia/os/advt/AdWhiteItem;->auto_close_wait_interval:J

    return-wide v0
.end method

.method public getClick_wait_interval()J
    .locals 2

    .line 82
    iget-wide v0, p0, Lnubia/os/advt/AdWhiteItem;->click_wait_interval:J

    return-wide v0
.end method

.method public getClose_wait_interval()J
    .locals 2

    .line 74
    iget-wide v0, p0, Lnubia/os/advt/AdWhiteItem;->close_wait_interval:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .line 106
    iget-wide v0, p0, Lnubia/os/advt/AdWhiteItem;->id:J

    return-wide v0
.end method

.method public getPackage_name()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lnubia/os/advt/AdWhiteItem;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method public isShowFlag()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lnubia/os/advt/AdWhiteItem;->isShowFlag:Z

    return v0
.end method

.method public isShowLogo()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lnubia/os/advt/AdWhiteItem;->isShowLogo:Z

    return v0
.end method

.method public setAd_id(J)V
    .locals 0
    .param p1, "ad_id"    # J

    .line 134
    iput-wide p1, p0, Lnubia/os/advt/AdWhiteItem;->ad_id:J

    .line 135
    return-void
.end method

.method public setAd_type(I)V
    .locals 0
    .param p1, "ad_type"    # I

    .line 142
    iput p1, p0, Lnubia/os/advt/AdWhiteItem;->ad_type:I

    .line 143
    return-void
.end method

.method public setAppid(Ljava/lang/String;)V
    .locals 0
    .param p1, "appid"    # Ljava/lang/String;

    .line 126
    iput-object p1, p0, Lnubia/os/advt/AdWhiteItem;->appid:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setAuto_close_interval(J)V
    .locals 0
    .param p1, "auto_close_interval"    # J

    .line 102
    iput-wide p1, p0, Lnubia/os/advt/AdWhiteItem;->auto_close_interval:J

    .line 103
    return-void
.end method

.method public setAuto_close_wait_interval(J)V
    .locals 0
    .param p1, "auto_close_wait_interval"    # J

    .line 94
    iput-wide p1, p0, Lnubia/os/advt/AdWhiteItem;->auto_close_wait_interval:J

    .line 95
    return-void
.end method

.method public setClick_wait_interval(J)V
    .locals 0
    .param p1, "click_wait_interval"    # J

    .line 86
    iput-wide p1, p0, Lnubia/os/advt/AdWhiteItem;->click_wait_interval:J

    .line 87
    return-void
.end method

.method public setClose_wait_interval(J)V
    .locals 0
    .param p1, "close_wait_interval"    # J

    .line 78
    iput-wide p1, p0, Lnubia/os/advt/AdWhiteItem;->close_wait_interval:J

    .line 79
    return-void
.end method

.method public setId(J)V
    .locals 0
    .param p1, "id"    # J

    .line 110
    iput-wide p1, p0, Lnubia/os/advt/AdWhiteItem;->id:J

    .line 111
    return-void
.end method

.method public setPackage_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "package_name"    # Ljava/lang/String;

    .line 118
    iput-object p1, p0, Lnubia/os/advt/AdWhiteItem;->package_name:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdWhiteItem{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnubia/os/advt/AdWhiteItem;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", package_name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnubia/os/advt/AdWhiteItem;->package_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnubia/os/advt/AdWhiteItem;->appid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", ad_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnubia/os/advt/AdWhiteItem;->ad_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", ad_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnubia/os/advt/AdWhiteItem;->ad_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", close_wait_interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnubia/os/advt/AdWhiteItem;->close_wait_interval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", click_wait_interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnubia/os/advt/AdWhiteItem;->click_wait_interval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", auto_close_wait_interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnubia/os/advt/AdWhiteItem;->auto_close_wait_interval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", auto_close_interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnubia/os/advt/AdWhiteItem;->auto_close_interval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 155
    iget-wide v0, p0, Lnubia/os/advt/AdWhiteItem;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 156
    iget-object v0, p0, Lnubia/os/advt/AdWhiteItem;->package_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lnubia/os/advt/AdWhiteItem;->appid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-wide v0, p0, Lnubia/os/advt/AdWhiteItem;->ad_id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 159
    iget v0, p0, Lnubia/os/advt/AdWhiteItem;->ad_type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-wide v0, p0, Lnubia/os/advt/AdWhiteItem;->close_wait_interval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 161
    iget-wide v0, p0, Lnubia/os/advt/AdWhiteItem;->click_wait_interval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 162
    iget-wide v0, p0, Lnubia/os/advt/AdWhiteItem;->auto_close_wait_interval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 163
    iget-wide v0, p0, Lnubia/os/advt/AdWhiteItem;->auto_close_interval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 164
    iget-boolean v0, p0, Lnubia/os/advt/AdWhiteItem;->isShowFlag:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 165
    iget-boolean v0, p0, Lnubia/os/advt/AdWhiteItem;->isShowLogo:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 166
    return-void
.end method
