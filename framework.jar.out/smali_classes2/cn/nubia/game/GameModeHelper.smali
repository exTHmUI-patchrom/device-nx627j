.class public Lcn/nubia/game/GameModeHelper;
.super Ljava/lang/Object;
.source "GameModeHelper.java"


# static fields
.field public static final CHANGE_NETWORK_GAME_MODE_OFF_ON:I = 0x80

.field private static DEBUG:Z = false

.field public static final DEFAULT_GAME_MODE:I

.field private static final FEATURE_GAME_KEY:Ljava/lang/String; = "nubia_game_key_feature"

.field public static final FIX_LIGHT_GAME_MODE_OFF_ON:I = 0x100

.field public static final GAME_EXTRA_APPUID:Ljava/lang/String; = "appuid"

.field public static final GAME_EXTRA_ISRUNNING:Ljava/lang/String; = "isRunning"

.field public static final GAME_EXTRA_PACKAGENAME:Ljava/lang/String; = "packagename"

.field public static final GAME_EXTRA_SWITCHS:Ljava/lang/String; = "switchs"

.field public static final GAME_MODE_OFF_ON:I = 0x1

.field public static final NETWORK_ACCELERATION_APP_LABEL_WHITE_LIST:Ljava/lang/String; = "network_acceleration_app_label_white_list"

.field public static final NETWORK_ACCELERATION_OFF_ON:I = 0x40

.field public static final NO_DISTURBE_GAME_MODE_OFF_ON:I = 0x4

.field public static final NO_FUN_GAME_MODE_OFF_ON:I = 0x10

.field public static final NO_KEYS_GAME_MODE_OFF_ON:I = 0x8

.field public static final NO_NETWORK_GAME_MODE_OFF_ON:I = 0x20

.field public static final NUBIA_ACTION_GAME_MODE:Ljava/lang/String; = "cn.nubia.action.GAME_MODE"

.field public static final NUBIA_ACTION_GAME_MODE_GAME_APP:Ljava/lang/String; = "cn.nubia.action.GAME_MODE_GAME_APP"

.field public static final SPEEDUP_GAME_MODE_OFF_ON:I = 0x2

.field public static final STR_GAME_MODE_OFF_ON:Ljava/lang/String; = "nubia_game_mode"

.field private static final TAG:Ljava/lang/String; = "GameModeHelper"

.field public static final VOICE_OPTIMIZATION_OFF_ON:I = 0x200

.field public static mPackageBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mSpecialOrientationActivityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mSpecialPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mVideoActivityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcn/nubia/game/GameModeHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 169

    .line 19
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcn/nubia/game/GameModeHelper;->DEBUG:Z

    .line 40
    invoke-static {}, Lcn/nubia/game/GameModeHelper;->getDefaultValue()I

    move-result v0

    sput v0, Lcn/nubia/game/GameModeHelper;->DEFAULT_GAME_MODE:I

    .line 45
    const-string v1, "com.qqgame.hlddz"

    const-string v2, "com.happyelements.AndroidAnimal"

    const-string v3, "com.happyelements.AndroidAnimal.wdj"

    const-string v4, "com.happyelements.AndroidAnimal.qq"

    const-string v5, "com.wepie.snake"

    const-string v6, "com.wepie.snake.tencent"

    const-string v7, "com.wepie.snake.baidu"

    const-string v8, "com.wepie.snake.qihoo"

    const-string v9, "com.tencent.tmgp.sgame"

    const-string v10, "com.tencent.peng"

    const-string v11, "com.qqgame.happymj"

    const-string v12, "cn.jj"

    const-string v13, "com.ztgame.bob"

    const-string v14, "com.brianbaek.popstar"

    const-string v15, "com.netease.onmyoji"

    const-string v16, "com.tencent.tmgp.yys.zqb"

    const-string v17, "com.netease.onmyoji.appchina"

    const-string v18, "com.netease.onmyoji.uc"

    const-string v19, "com.tencent.game.rhythmmaster"

    const-string v20, "com.tuyoo.doudizhu.maintu"

    const-string v21, "com.tuyoo.doudizhu.bd"

    const-string v22, "com.tuyoo.tudoudizhu.uc"

    const-string v23, "com.tuyoo.tudoudizhu.wdj"

    const-string v24, "com.tuyoo.tudoudizhu.nubia"

    const-string v25, "com.imangi.templerun2"

    const-string v26, "com.imangi.templerun2.bd"

    const-string v27, "com.tencent.pao"

    const-string v28, "com.mojang.minecraftpe"

    const-string v29, "com.mojang.minecraftpe.e7game.nubia"

    const-string v30, "com.tencent.tmgp.cf"

    const-string v31, "com.supercell.clashofclans"

    const-string v32, "com.supercell.clashofclans.wdj"

    const-string v33, "com.supercell.clashofclans.baidu"

    const-string v34, "com.supercell.clashofclans.qihoo"

    const-string v35, "com.supercell.clashofclans.wdj"

    const-string v36, "com.supercell.clashofclans.uc"

    const-string v37, "com.supercell.clashofclans.kunlun"

    const-string v38, "com.tencent.tmgp.l10"

    const-string v39, "com.m37.dtszj.sy37"

    const-string v40, "com.netease.my"

    const-string v41, "com.longtugame.rxjh.longtu"

    const-string v42, "com.tencent.tmgp.cf"

    const-string v43, "com.tencent.tmgp.mhzxsy"

    const-string v44, "com.gbits.atm.ly.linyou"

    const-string v45, "com.tencent.tmgp.dragonnest"

    const-string v46, "com.netease.stzb.nubia"

    const-string v47, "com.wanmei.ff.nubia"

    const-string v48, "com.netease.zmq.nubia"

    const-string v49, "com.wanmei.torchlight.android.nubia"

    const-string v50, "com.xianyugame.zjzr.nubia"

    const-string v51, "com.ea.simcitymobile.nubia"

    const-string v52, "com.netease.gmdl.nubia"

    const-string v53, "cn.jj"

    const-string v54, "com.tencent.tmgp.sgqyz"

    const-string v55, "com.zlongame.fengshen"

    const-string v56, "com.tencent.tmgp.tstl"

    const-string v57, "com.zlongame.lr.nubia"

    const-string v58, "com.jiguang.dtszj.nubia"

    const-string v59, "com.netease.my"

    const-string v60, "com.cyou.djdsz.nubia"

    const-string v61, "com.tencent.shootgame"

    const-string v62, "com.tencent.tmgp.wec"

    const-string v63, "com.sy.xljx.nubia"

    const-string v64, "com.netease.qnyh.nubia"

    const-string v65, "com.netease.dhxy"

    const-string v66, "com.sgw.hlbyr.nubia"

    const-string v67, "com.fgol.hsw.nubia"

    const-string v68, "com.tencent.KiHan"

    const-string v69, "com.wyd.hero.yqlfc.cb1.apk"

    const-string v70, "com.netease.zjz.nubia"

    const-string v71, "com.netease.zmq.nubia"

    const-string v72, "com.askj.jtyl2.ewan.nubia"

    const-string v73, "com.ycgame.smsy.nubia"

    const-string v74, "com.ea.simcitymobile.nubia"

    const-string v75, "com.leqi.buyu.nubia"

    const-string v76, "com.snk.kofworld.nubia"

    const-string v77, "com.netease.stzb.nubia"

    const-string v78, "com.netease.onmyoji"

    const-string v79, "com.netease.cys.nubia"

    const-string v80, "com.ledou.mhhy"

    const-string v81, "com.leiting.gumballs.nubia"

    const-string v82, "com.mfp.jelly.nubia"

    const-string v83, "com.tencent.tmgp.NBA"

    const-string v84, "com.gamedo.hlw.nubia"

    const-string v85, "com.anzhuojpzmg.ckhd.nubia"

    const-string v86, "com.ykyx.fzjw.nubia"

    const-string v87, "com.taojin.dungeon2.nubia"

    const-string v88, "com.netease.qrzd.nubia"

    const-string v89, "com.hoolai.hmzqfy.nubia"

    const-string v90, "com.pokercity.bydrqp"

    const-string v91, "com.ea.android.chs.nbamobile.yxhy"

    const-string v92, "com.xf.lcby.hede.nubia"

    const-string v93, "com.youzu.android.snsgz"

    const-string v94, "com.tencent.tmgp.mhzxsy"

    const-string v95, "com.yunchang.pisces.nubia"

    const-string v96, "com.qhslwh.qhslwh.nubia"

    const-string v97, "com.longtugame.rxjh.longtu"

    const-string v98, "com.zengame.ttddzzrb.nubia"

    const-string v99, "com.tencent.tmgp.xymobile"

    const-string v100, "com.netease.ma71.nubia"

    const-string v101, "com.tanwan.ltcs.nubia"

    const-string v102, "com.tencent.tmgp.tmsk.qj2"

    const-string v103, "com.tencent.peng"

    const-string v104, "com.miHoYo.bh3.uc"

    const-string v105, "com.happyelements.AndroidClover.mob"

    const-string v106, "com.GF.PalaceM2_cn_cn.hwy_android"

    const-string v107, "com.hrgame.papa2.nubia"

    const-string v108, "com.ourpalm.lwcsdldl3.nubia"

    const-string v109, "com.tencent.freestyle"

    const-string v110, "com.GameMagic.A2Project.nubia"

    const-string v111, "com.kiloo.subwaysurf"

    const-string v112, "com.wanmei.ff.nubia"

    const-string v113, "com.yaowan.dfh3.nubia"

    const-string v114, "com.wanmei.zhuxian.nubia3"

    const-string v115, "com.netease.sgrlz.nubia"

    const-string v116, "com.tencent.tmgp.jnbg2"

    const-string v117, "com.linghou.tqt.nubia"

    const-string v118, "jianghu.lanjing.com.loading"

    const-string v119, "com.yingxiong.dfzj.hero"

    const-string v120, "com.game.sgz.nubia"

    const-string v121, "com.xishanju.mysy.nubia"

    const-string v122, "com.tencent.tmgp.bydr3dx"

    const-string v123, "com.tencent.tmgp.ylm"

    const-string v124, "com.shuguo.xaly.nubia"

    const-string v125, "com.outfit7.talkingtomgoldrun.nubia"

    const-string v126, "com.saiyun.qpbylwb.nubia"

    const-string v127, "com.wanda.xuankongcheng.nubia"

    const-string v128, "com.game.shns.nubia"

    const-string v129, "com.prgame5.fish2.online.nubia"

    const-string v130, "com.kaopu.dsgl.nubia"

    const-string v131, "com.bilibili.fatego.sharejoy"

    const-string v132, "com.xcqy.nubia"

    const-string v133, "com.popcap.pvz2cthdnby"

    const-string v134, "com.sus.ztyy.nubia"

    const-string v135, "com.netease.hsmyj.nubia"

    const-string v136, "com.leocool.yugioh.nubia"

    const-string/jumbo v137, "qyj.nubia"

    const-string v138, "com.linekong.dbm.lk"

    const-string v139, "com.ztgame.jl.nubiya"

    const-string v140, "com.Lxd.Bearsfantasyspace.nubia"

    const-string v141, "com.wanmei.torchlight.android.nubia"

    const-string v142, "com.nemo.wcgame.ly.nubia"

    const-string v143, "com.kunlunxu.nubia"

    const-string v144, "com.sdsg.qd9377.nubia"

    const-string v145, "com.shanghailvbing.hhw.azsy"

    const-string v146, "com.funplus.awlzw.nubia"

    const-string v147, "com.shuguo.sdksmdmx.nubia"

    const-string v148, "com.supercell.clashroyale.uc"

    const-string v149, "com.netease.hyxd.nubia"

    const-string v150, "com.netease.hyxd.yixin"

    const-string v151, "com.netease.hyxd.aligames"

    const-string v152, "com.netease.hyxd.baidu"

    const-string v153, "com.netease.hyxd"

    const-string v154, "com.tencent.tmgp.speedmobile"

    const-string v155, "com.tencent.tmgp.pubgmhd"

    const-string v156, "com.tencent.tmgp.pubgm"

    const-string v157, "com.netease.wyclx.nubia"

    const-string v158, "com.tencent.tmgp.yongyong.clx"

    const-string v159, "com.netease.wyclx"

    const-string v160, "com.netease.zjz"

    const-string v161, "com.netease.zjz.yyxx.sougou"

    const-string v162, "com.netease.dwrg"

    const-string v163, "com.netease.dwrg.sogou"

    const-string v164, "com.tencent.tmgp.dwrg"

    const-string v165, "com.netease.dwrg.nubia"

    const-string v166, "com.netease.dwrg.baidu"

    const-string v167, "com.netease.dwrg.aligames"

    const-string v168, "com.netease.dwrg.qihoo"

    filled-new-array/range {v1 .. v168}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcn/nubia/game/GameModeHelper;->mPackageBlackList:Ljava/util/List;

    .line 111
    const-string v1, "com.t2ksports.nba2k15android"

    const-string v2, "com.t2ksports.nba2k17android"

    const-string v3, "com.tencent.game.rhythmmaster"

    const-string v4, "com.tencent.tmgp.sgame"

    const-string v5, "com.netease.hyxd.nubia"

    const-string v6, "com.netease.hyxd.yixin"

    const-string v7, "com.netease.hyxd.aligames"

    const-string v8, "com.netease.hyxd.baidu"

    const-string v9, "com.netease.hyxd"

    const-string v10, "com.netease.zjz"

    const-string v11, "com.netease.dwrg"

    const-string v12, "com.netease.dwrg.sogou"

    const-string v13, "com.tencent.tmgp.dwrg"

    const-string v14, "com.netease.dwrg.nubia"

    const-string v15, "com.netease.dwrg.baidu"

    const-string v16, "com.netease.dwrg.aligames"

    const-string v17, "com.netease.dwrg.qihoo"

    const-string v18, "com.imangi.templerun2.bd"

    const-string v19, "com.imangi.templerun2"

    const-string v20, "com.happyelements.AndroidAnimal.overseas"

    const-string v21, "com.miHoYo.enterprise.NGHSoD"

    const-string v22, "com.tencent.tmgp.speedmobile"

    const-string v23, "com.tencent.KiHan"

    const-string v24, "com.tencent.shootgame"

    const-string v25, "com.tencent.tmgp.NBA"

    const-string v26, "com.tencent.tmgp.cf"

    const-string v27, "com.tencent.tmgp.pubgm"

    const-string v28, "com.tencent.tmgp.pubgmhd"

    const-string v29, "com.qqgame.mic"

    const-string v30, "com.tencent.tmgp.bh3"

    filled-new-array/range {v1 .. v30}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcn/nubia/game/GameModeHelper;->mSpecialPackageList:Ljava/util/List;

    .line 119
    const-string v1, "com.tencent.mm.plugin.voip.ui.VideoActivity"

    const-string v2, "com.huajiao.detail.WatchesListActivity"

    const-string v3, "com.huajiao.video.VideoDetailActivity"

    const-string v4, "com.ss.android.ugc.live.live.detail.ui.LiveDetailActivity "

    const-string v5, "com.ss.android.ugc.live.detail.ui.DetailActivity"

    const-string v6, "com.tencent.av.ui.AVActivity"

    const-string v7, "com.meelive.ingkee.business.room.ui.activity.RoomActivity"

    const-string v8, "com.ss.android.ugc.aweme.detail.ui.DetailActivity"

    const-string v9, "com.xcyo.liveroom.room.activity.LiveActivity"

    const-string v10, "com.panda.videoliveplatform.activity.LiveRoomActivity"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcn/nubia/game/GameModeHelper;->mVideoActivityList:Ljava/util/List;

    .line 125
    const-string v0, "com.tencent.tmgp.speedmobile.speedmobile"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcn/nubia/game/GameModeHelper;->mSpecialOrientationActivityList:Ljava/util/List;

    .line 131
    new-instance v0, Lcn/nubia/game/GameModeHelper$1;

    invoke-direct {v0}, Lcn/nubia/game/GameModeHelper$1;-><init>()V

    sput-object v0, Lcn/nubia/game/GameModeHelper;->sInstance:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    return-void
.end method

.method public static IsSupportGameKeys()Z
    .locals 5

    .line 364
    const/4 v0, 0x0

    .line 365
    .local v0, "isSupportGameKeys":Z
    const-string/jumbo v1, "nubia_game_key_feature"

    invoke-static {v1}, Landroid/util/NubiaConfig;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, "gameKeyFeature":Ljava/lang/String;
    sget-boolean v2, Lcn/nubia/game/GameModeHelper;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GameModeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gameKeyFeature:="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 368
    const/4 v0, 0x1

    .line 370
    :cond_1
    return v0
.end method

.method public static getDefault()Lcn/nubia/game/GameModeHelper;
    .locals 1

    .line 138
    sget-object v0, Lcn/nubia/game/GameModeHelper;->sInstance:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/game/GameModeHelper;

    return-object v0
.end method

.method public static getDefaultValue()I
    .locals 1

    .line 142
    invoke-static {}, Lcn/nubia/game/GameModeHelper;->IsSupportGameKeys()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const/16 v0, 0x337

    return v0

    .line 148
    :cond_0
    const/16 v0, 0x13f

    return v0
.end method

.method private getGameModeDBValue(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 337
    nop

    .line 338
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nubia_game_mode"

    sget v2, Lcn/nubia/game/GameModeHelper;->DEFAULT_GAME_MODE:I

    .line 337
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 339
    .local v0, "gameMode":I
    sget-boolean v1, Lcn/nubia/game/GameModeHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GameModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getGameModeDBValue gameMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_0
    return v0
.end method

.method private setGameModeDBValue(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gamemode"    # I

    .line 344
    nop

    .line 345
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nubia_game_mode"

    .line 344
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 346
    sget-boolean v0, Lcn/nubia/game/GameModeHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GameModeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setGameModeDBValue gameMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_0
    return-void
.end method


# virtual methods
.method public IsAllowDialogShow(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 329
    :try_start_0
    invoke-static {p1}, Lnubia/os/ApplicationManager$Trigger;->IsAllowDialogShow(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/game/GameModeHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 332
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public IsGameModeRunning()Z
    .locals 2

    .line 238
    :try_start_0
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->IsGameModeRunning()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/game/GameModeHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 241
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public IsGameModeSubChangeNetWorkRunning()Z
    .locals 2

    .line 316
    const/16 v0, 0x80

    .line 317
    :try_start_0
    invoke-static {v0}, Lnubia/os/ApplicationManager$Trigger;->IsGameModeSubRunning(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    return v0

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/game/GameModeHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 320
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public IsGameModeSubNoDisturbRunning()Z
    .locals 2

    .line 263
    const/4 v0, 0x4

    .line 264
    :try_start_0
    invoke-static {v0}, Lnubia/os/ApplicationManager$Trigger;->IsGameModeSubRunning(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    return v0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/game/GameModeHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 267
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public IsGameModeSubNoFunsRunning()Z
    .locals 2

    .line 290
    const/16 v0, 0x10

    .line 291
    :try_start_0
    invoke-static {v0}, Lnubia/os/ApplicationManager$Trigger;->IsGameModeSubRunning(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    return v0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/game/GameModeHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 294
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public IsGameModeSubNoKeysRunning()Z
    .locals 2

    .line 277
    const/16 v0, 0x8

    .line 278
    :try_start_0
    invoke-static {v0}, Lnubia/os/ApplicationManager$Trigger;->IsGameModeSubRunning(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    return v0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/game/GameModeHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 281
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public IsGameModeSubNoNetWorkRunning()Z
    .locals 2

    .line 303
    const/16 v0, 0x20

    .line 304
    :try_start_0
    invoke-static {v0}, Lnubia/os/ApplicationManager$Trigger;->IsGameModeSubRunning(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    return v0

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/game/GameModeHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 307
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public IsGameModeSubSpeedUpRunning()Z
    .locals 2

    .line 250
    const/4 v0, 0x2

    .line 251
    :try_start_0
    invoke-static {v0}, Lnubia/os/ApplicationManager$Trigger;->IsGameModeSubRunning(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    return v0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/game/GameModeHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 254
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public IsOpenGameMode()Z
    .locals 3

    .line 160
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->getGameMode()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcn/nubia/game/GameModeHelper;->DEBUG:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 163
    :cond_1
    return v0
.end method

.method public IsOpenGameModeSubDisturb()Z
    .locals 3

    .line 185
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/game/GameModeHelper;->IsOpenGameMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->getGameMode()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    .line 185
    :cond_0
    return v0

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcn/nubia/game/GameModeHelper;->DEBUG:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    :cond_1
    return v0
.end method

.method public IsOpenGameModeSubNoFuns()Z
    .locals 3

    .line 211
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/game/GameModeHelper;->IsOpenGameMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->getGameMode()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    .line 211
    :cond_0
    return v0

    .line 213
    :catch_0
    move-exception v1

    .line 214
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcn/nubia/game/GameModeHelper;->DEBUG:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 215
    :cond_1
    return v0
.end method

.method public IsOpenGameModeSubNoKeys()Z
    .locals 3

    .line 198
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/game/GameModeHelper;->IsOpenGameMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->getGameMode()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    .line 198
    :cond_0
    return v0

    .line 200
    :catch_0
    move-exception v1

    .line 201
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcn/nubia/game/GameModeHelper;->DEBUG:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    :cond_1
    return v0
.end method

.method public IsOpenGameModeSubNoNetWork()Z
    .locals 3

    .line 224
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/game/GameModeHelper;->IsOpenGameMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->getGameMode()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    .line 224
    :cond_0
    return v0

    .line 226
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcn/nubia/game/GameModeHelper;->DEBUG:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 228
    :cond_1
    return v0
.end method

.method public IsOpenGameModeSubSpeedUp()Z
    .locals 3

    .line 172
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/game/GameModeHelper;->IsOpenGameMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->getGameMode()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    .line 172
    :cond_0
    return v0

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcn/nubia/game/GameModeHelper;->DEBUG:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    :cond_1
    return v0
.end method

.method public closeSub(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sub"    # I

    .line 350
    invoke-direct {p0, p1}, Lcn/nubia/game/GameModeHelper;->getGameModeDBValue(Landroid/content/Context;)I

    move-result v0

    .line 351
    .local v0, "gameMode":I
    not-int v1, p2

    and-int/2addr v1, v0

    .line 352
    .local v1, "newGameMode":I
    sget-boolean v2, Lcn/nubia/game/GameModeHelper;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GameModeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " closeSub newGameMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    invoke-direct {p0, p1, v1}, Lcn/nubia/game/GameModeHelper;->setGameModeDBValue(Landroid/content/Context;I)V

    .line 354
    return-void
.end method

.method public openSub(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sub"    # I

    .line 357
    invoke-direct {p0, p1}, Lcn/nubia/game/GameModeHelper;->getGameModeDBValue(Landroid/content/Context;)I

    move-result v0

    .line 358
    .local v0, "gameMode":I
    or-int v1, v0, p2

    .line 359
    .local v1, "newGameMode":I
    sget-boolean v2, Lcn/nubia/game/GameModeHelper;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GameModeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " openSub newGameMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    invoke-direct {p0, p1, v1}, Lcn/nubia/game/GameModeHelper;->setGameModeDBValue(Landroid/content/Context;I)V

    .line 361
    return-void
.end method
