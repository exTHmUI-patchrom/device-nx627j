.class public Lnubia/os/advt/AdConfig;
.super Ljava/lang/Object;
.source "AdConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lnubia/os/advt/AdConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field ad_display_limit:I

.field ad_network_type:I

.field ad_render_timeout:J

.field ad_request_timeout:J

.field asdk_switch:I

.field auto_close_cycle:J

.field gray_adid:J

.field gray_appid:Ljava/lang/String;

.field gray_auto_close_wait_interval:J

.field gray_click_wait_interval:J

.field gray_close_wait_interval:J

.field gray_showflag:Z

.field gray_showlogo:Z

.field match_method:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 169
    new-instance v0, Lnubia/os/advt/AdConfig$1;

    invoke-direct {v0}, Lnubia/os/advt/AdConfig$1;-><init>()V

    sput-object v0, Lnubia/os/advt/AdConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnubia/os/advt/AdConfig;->gray_showflag:Z

    .line 34
    iput-boolean v0, p0, Lnubia/os/advt/AdConfig;->gray_showlogo:Z

    .line 149
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnubia/os/advt/AdConfig;->gray_showflag:Z

    .line 34
    iput-boolean v0, p0, Lnubia/os/advt/AdConfig;->gray_showlogo:Z

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lnubia/os/advt/AdConfig;->match_method:I

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lnubia/os/advt/AdConfig;->ad_request_timeout:J

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lnubia/os/advt/AdConfig;->ad_display_limit:I

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lnubia/os/advt/AdConfig;->ad_network_type:I

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lnubia/os/advt/AdConfig;->asdk_switch:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lnubia/os/advt/AdConfig;->ad_render_timeout:J

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnubia/os/advt/AdConfig;->gray_appid:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lnubia/os/advt/AdConfig;->gray_adid:J

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lnubia/os/advt/AdConfig;->gray_close_wait_interval:J

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lnubia/os/advt/AdConfig;->gray_click_wait_interval:J

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lnubia/os/advt/AdConfig;->gray_auto_close_wait_interval:J

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lnubia/os/advt/AdConfig;->auto_close_cycle:J

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lnubia/os/advt/AdConfig;->gray_showflag:Z

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lnubia/os/advt/AdConfig;->gray_showlogo:Z

    .line 167
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public getAd_display_limit()I
    .locals 1

    .line 69
    iget v0, p0, Lnubia/os/advt/AdConfig;->ad_display_limit:I

    return v0
.end method

.method public getAd_network_type()I
    .locals 1

    .line 77
    iget v0, p0, Lnubia/os/advt/AdConfig;->ad_network_type:I

    return v0
.end method

.method public getAd_render_timeout()J
    .locals 2

    .line 93
    iget-wide v0, p0, Lnubia/os/advt/AdConfig;->ad_render_timeout:J

    return-wide v0
.end method

.method public getAd_request_timeout()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lnubia/os/advt/AdConfig;->ad_request_timeout:J

    return-wide v0
.end method

.method public getAsdk_switch()I
    .locals 1

    .line 85
    iget v0, p0, Lnubia/os/advt/AdConfig;->asdk_switch:I

    return v0
.end method

.method public getAuto_close_cycle()J
    .locals 2

    .line 141
    iget-wide v0, p0, Lnubia/os/advt/AdConfig;->auto_close_cycle:J

    return-wide v0
.end method

.method public getGray_adid()J
    .locals 2

    .line 109
    iget-wide v0, p0, Lnubia/os/advt/AdConfig;->gray_adid:J

    return-wide v0
.end method

.method public getGray_appid()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lnubia/os/advt/AdConfig;->gray_appid:Ljava/lang/String;

    return-object v0
.end method

.method public getGray_auto_close_wait_interval()J
    .locals 2

    .line 133
    iget-wide v0, p0, Lnubia/os/advt/AdConfig;->gray_auto_close_wait_interval:J

    return-wide v0
.end method

.method public getGray_click_wait_interval()J
    .locals 2

    .line 125
    iget-wide v0, p0, Lnubia/os/advt/AdConfig;->gray_click_wait_interval:J

    return-wide v0
.end method

.method public getGray_close_wait_interval()J
    .locals 2

    .line 117
    iget-wide v0, p0, Lnubia/os/advt/AdConfig;->gray_close_wait_interval:J

    return-wide v0
.end method

.method public getMatch_method()I
    .locals 1

    .line 53
    iget v0, p0, Lnubia/os/advt/AdConfig;->match_method:I

    return v0
.end method

.method public isGray_showflag()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lnubia/os/advt/AdConfig;->gray_showflag:Z

    return v0
.end method

.method public isGray_showlogo()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lnubia/os/advt/AdConfig;->gray_showlogo:Z

    return v0
.end method

.method public setAd_display_limit(I)V
    .locals 0
    .param p1, "ad_display_limit"    # I

    .line 73
    iput p1, p0, Lnubia/os/advt/AdConfig;->ad_display_limit:I

    .line 74
    return-void
.end method

.method public setAd_network_type(I)V
    .locals 0
    .param p1, "ad_network_type"    # I

    .line 81
    iput p1, p0, Lnubia/os/advt/AdConfig;->ad_network_type:I

    .line 82
    return-void
.end method

.method public setAd_render_timeout(J)V
    .locals 0
    .param p1, "ad_render_timeout"    # J

    .line 97
    iput-wide p1, p0, Lnubia/os/advt/AdConfig;->ad_render_timeout:J

    .line 98
    return-void
.end method

.method public setAd_request_timeout(J)V
    .locals 0
    .param p1, "ad_request_timeout"    # J

    .line 65
    iput-wide p1, p0, Lnubia/os/advt/AdConfig;->ad_request_timeout:J

    .line 66
    return-void
.end method

.method public setAsdk_switch(I)V
    .locals 0
    .param p1, "asdk_switch"    # I

    .line 89
    iput p1, p0, Lnubia/os/advt/AdConfig;->asdk_switch:I

    .line 90
    return-void
.end method

.method public setAuto_close_cycle(J)V
    .locals 0
    .param p1, "auto_close_cycle"    # J

    .line 145
    iput-wide p1, p0, Lnubia/os/advt/AdConfig;->auto_close_cycle:J

    .line 146
    return-void
.end method

.method public setGray_adid(J)V
    .locals 0
    .param p1, "gray_adid"    # J

    .line 113
    iput-wide p1, p0, Lnubia/os/advt/AdConfig;->gray_adid:J

    .line 114
    return-void
.end method

.method public setGray_appid(Ljava/lang/String;)V
    .locals 0
    .param p1, "gray_aapid"    # Ljava/lang/String;

    .line 105
    iput-object p1, p0, Lnubia/os/advt/AdConfig;->gray_appid:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setGray_auto_close_wait_interval(J)V
    .locals 0
    .param p1, "gray_auto_close_wait_interval"    # J

    .line 137
    iput-wide p1, p0, Lnubia/os/advt/AdConfig;->gray_auto_close_wait_interval:J

    .line 138
    return-void
.end method

.method public setGray_click_wait_interval(J)V
    .locals 0
    .param p1, "gray_click_wait_interval"    # J

    .line 129
    iput-wide p1, p0, Lnubia/os/advt/AdConfig;->gray_click_wait_interval:J

    .line 130
    return-void
.end method

.method public setGray_close_wait_interval(J)V
    .locals 0
    .param p1, "gray_close_wait_interval"    # J

    .line 121
    iput-wide p1, p0, Lnubia/os/advt/AdConfig;->gray_close_wait_interval:J

    .line 122
    return-void
.end method

.method public setGray_showflag(Z)V
    .locals 0
    .param p1, "gray_showflag"    # Z

    .line 41
    iput-boolean p1, p0, Lnubia/os/advt/AdConfig;->gray_showflag:Z

    .line 42
    return-void
.end method

.method public setGray_showlogo(Z)V
    .locals 0
    .param p1, "gray_showlogo"    # Z

    .line 49
    iput-boolean p1, p0, Lnubia/os/advt/AdConfig;->gray_showlogo:Z

    .line 50
    return-void
.end method

.method public setMatch_method(I)V
    .locals 0
    .param p1, "match_method"    # I

    .line 57
    iput p1, p0, Lnubia/os/advt/AdConfig;->match_method:I

    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdConfig{\nmatch_method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnubia/os/advt/AdConfig;->match_method:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n, ad_request_timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnubia/os/advt/AdConfig;->ad_request_timeout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n, ad_display_limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnubia/os/advt/AdConfig;->ad_display_limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n, ad_network_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnubia/os/advt/AdConfig;->ad_network_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n, asdk_switch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnubia/os/advt/AdConfig;->asdk_switch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n, ad_render_timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnubia/os/advt/AdConfig;->ad_render_timeout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n, gray_appid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnubia/os/advt/AdConfig;->gray_appid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\n, gray_adid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnubia/os/advt/AdConfig;->gray_adid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n, gray_close_wait_interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnubia/os/advt/AdConfig;->gray_close_wait_interval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n, gray_click_wait_interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnubia/os/advt/AdConfig;->gray_click_wait_interval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n, gray_auto_close_wait_interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnubia/os/advt/AdConfig;->gray_auto_close_wait_interval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n, auto_close_cycle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnubia/os/advt/AdConfig;->auto_close_cycle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 188
    iget v0, p0, Lnubia/os/advt/AdConfig;->match_method:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget-wide v0, p0, Lnubia/os/advt/AdConfig;->ad_request_timeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 190
    iget v0, p0, Lnubia/os/advt/AdConfig;->ad_display_limit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget v0, p0, Lnubia/os/advt/AdConfig;->ad_network_type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget v0, p0, Lnubia/os/advt/AdConfig;->asdk_switch:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget-wide v0, p0, Lnubia/os/advt/AdConfig;->ad_render_timeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 194
    iget-object v0, p0, Lnubia/os/advt/AdConfig;->gray_appid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-wide v0, p0, Lnubia/os/advt/AdConfig;->gray_adid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 196
    iget-wide v0, p0, Lnubia/os/advt/AdConfig;->gray_close_wait_interval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 197
    iget-wide v0, p0, Lnubia/os/advt/AdConfig;->gray_click_wait_interval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 198
    iget-wide v0, p0, Lnubia/os/advt/AdConfig;->gray_auto_close_wait_interval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 199
    iget-wide v0, p0, Lnubia/os/advt/AdConfig;->auto_close_cycle:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 200
    iget-boolean v0, p0, Lnubia/os/advt/AdConfig;->gray_showflag:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 201
    iget-boolean v0, p0, Lnubia/os/advt/AdConfig;->gray_showlogo:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 202
    return-void
.end method
