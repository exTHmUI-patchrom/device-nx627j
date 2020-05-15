.class public Lcn/nubia/server/notification/DBPresetHelper;
.super Ljava/lang/Object;
.source "DBPresetHelper.java"


# static fields
.field public static final IMPORTANCE_DEFAULT:I = 0x4

.field public static final IMPORTANCE_HIGH:I = 0x8

.field public static final IMPORTANCE_LOW:I = 0x2

.field public static final IMPORTANCE_MIN:I = 0x1

.field public static final NUBIA_PUSH_APP_White_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final VISIBILITU_LIGHT:I = 0x20

.field public static final VISIBILITY_LOCKSCREEN:I = 0x10

.field private static mDefalutMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    .line 18
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.mm"

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.mm:nubia_clone"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.android.server.telecom"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "cn.nubia.mms"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "cn.nubia.neoshare"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.android.systemui"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.mobileqq"

    const/16 v3, 0x18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.mobileqq:nubia_clone"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.qqlite"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.qqlite:nubia_clone"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.facebook.katana"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.facebook.katana:nubia_clone"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "im.yixin"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "im.yixin:nubia_clone"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.alibaba.android.rimet"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.alibaba.android.rimet:nubia_clone"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.alibaba.mobileim"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.alibaba.mobileim:nubia_clone"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.immomo.momo"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.immomo.momo:nubia_clone"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "cn.nubia.weather"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "cn.nubia.systemupdate"

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "cn.nubia.deskclock.preset"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "cn.nubia.calendar.preset"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "cn.nubia.edge"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "cn.nubia.owlsystem"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.redteamobile.roaming"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "cn.nubia.notepad.preset"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "cn.nubia.music.preset"

    const/16 v3, 0x12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.android.bluetooth"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "cn.nubia.bluetooth.opp"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.eg.android.AlipayGphone"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.sdu.didi.psnger"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string/jumbo v1, "so.ofo.labofo"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.mobike.mobikeapp"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.androidqqmail"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.sina.weibo"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.sina.weibo:nubia_clone"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.zhihu.android"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.zhihu.android:nubia_clone"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.netease.mail"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.chaozh.iReaderNubia"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.shoujiduoduo.ringtone"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.netease.cloudmusic"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.itings.myradio"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.qqmusic"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.kugou.android"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.tuotuo.solo"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.yibasan.lizhifm"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "fm.qingting.qtradio"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.changba"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.ximalaya.ting.android"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "bubei.tingshu"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.douban.frodo"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "cn.kuwo.player"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.gwsoft.imusic.controller"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "fm.xiami.main"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "cmccwm.mobilemusic"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.duomi.android"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.ting.mp3.android"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.qqmusicpad"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "cn.kuwo.kwmusichd"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "cn.nubia.databackup"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "cn.nubia.wfd"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "cn.nubia.v5light.preset"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "cn.nubia.neostore"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "cn.nubia.thememanager"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "cn.nubia.contacts"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "cn.nubia.browser"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "cn.nubia.soundrecorder.preset"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "cn.nubia.security2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "cn.nubia.antivirus"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "cn.nubia.powersaving"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "cn.nubia.flycow"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "cn.nubia.nubiashop"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "cn.nubia.cloud"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.android.settings"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "cn.nubia.hybrid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.ss.android.article.news"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.reading"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.hipu.yidian"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.smile.gifmaker"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.ss.android.ugc.aweme"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.ss.android.ugc.live"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.qqlive"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.youku.phone"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.autonavi.minimap"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.baidu.BaiduMap"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.sdu.didi.gui"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.Qunar"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "ctrip.android.view"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.qzone"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.instagram.android"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.jingdong.app.mall"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.sankuai.meituan"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.achievo.vipshop"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.taobao.taobao"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.wuba"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.xunmeng.pinduoduo"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.icbc"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.chinamworld.main"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.chinamworld.bocmbci"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.yitong.mbank.psbc"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.android.bankabc"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "cmb.pb"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.shuqi.controller"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "cn.cj.pe"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.corp21cn.mail189"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.netease.mobimail"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.netease.uu"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "cn.nubia.neopush"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "cn.nubia.gamehighlights"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "cn.nubia.voiceassist"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "android.app.notification.legacy.cts"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "android.app.stubs"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.android.cts.verifier"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.android.cts.robot"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.android.cts.accessibilityservice"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.android.cts.app.stub"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "android.app.cts"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "android.accessibilityservice.cts"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.android.cts.net.hostside.app2"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.android.cts.managedprofiletests.notificationsender"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "android.systemui.cts"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.android.cts.content"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    const-string v1, "com.google.android.gts.backup.notificationsettingsrestoretestapp"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v0, "cn.nubia.neoshare"

    const-string v1, "com.chaozh.iReaderNubia"

    const-string v2, "cn.nubia.neopush"

    const-string v3, "cn.nubia.thememanager"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/notification/DBPresetHelper;->NUBIA_PUSH_APP_White_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcn/nubia/server/notification/DBPresetHelper;->mDefalutMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
