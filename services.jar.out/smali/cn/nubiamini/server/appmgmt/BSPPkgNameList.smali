.class public Lcn/nubiamini/server/appmgmt/BSPPkgNameList;
.super Ljava/lang/Object;
.source "BSPPkgNameList.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BSPPkgNameList"

.field public static mPackageBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mPackageSchedutilPerfList:Ljava/util/List;
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


# direct methods
.method static constructor <clinit>()V
    .locals 154

    .line 13
    const-string v0, "com.antutu.ABenchMark"

    const-string v1, "com.ludashi.vrbench"

    const-string v2, "com.antutu.benchmark.full"

    const-string v3, "com.ludashi.benchmark"

    const-string v4, "com.primatelabs.geekbench3"

    const-string v5, "com.primatelabs.geekbench"

    const-string v6, "com.ludashi.aibench"

    const-string v7, "com.qihoo360.mobilesafe.bench"

    const-string v8, "com.rightware.basemarkgui"

    const-string v9, "com.antutu.CpuMaster"

    const-string v10, "com.antutu.tester"

    const-string v11, "com.antutu.ABenchMark.GL2"

    const-string v12, "com.aurorasoftworks.quadrant.ui.professional"

    const-string v13, "com.domobile.esysteminfo"

    const-string v14, "com.andromeda.androbench2"

    const-string v15, "com.futuremark.dmandroid.application"

    const-string v16, "com.glbenchmark.glbenchmark27"

    const-string v17, "com.rightware.BasemarkOSII"

    const-string v18, "gr.androiddev.BenchmarkPi"

    const-string v19, "com.glbenchmark.glbenchmark"

    const-string v20, "eu.chainfire.cfbench"

    const-string v21, "com.greenecomputing.linpack"

    const-string v22, "cn.nubia.myfile"

    const-string v23, "com.ludashi.benchmark"

    filled-new-array/range {v0 .. v23}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcn/nubiamini/server/appmgmt/BSPPkgNameList;->mPackageSchedutilPerfList:Ljava/util/List;

    .line 22
    const-string v1, "com.t2ksports.nba2k15android"

    const-string v2, "com.t2ksports.nba2k17android"

    const-string v3, "com.tencent.game.rhythmmaster"

    const-string v4, "com.tencent.tmgp.sgame"

    const-string v5, "com.netease.hyxd.nubia"

    const-string v6, "com.netease.hyxd.nubia"

    const-string v7, "com.netease.hyxd.yixin"

    const-string v8, "com.netease.hyxd.aligames"

    const-string v9, "com.netease.hyxd.baidu"

    const-string v10, "com.netease.hyxd"

    const-string v11, "com.netease.hyxd"

    const-string v12, "com.netease.zjz"

    const-string v13, "com.imangi.templerun2.bd"

    const-string v14, "com.imangi.templerun2"

    const-string v15, "com.happyelements.AndroidAnimal.overseas"

    const-string v16, "com.miHoYo.enterprise.NGHSoD"

    const-string v17, "com.tencent.tmgp.speedmobile"

    const-string v18, "com.tencent.KiHan"

    const-string v19, "com.tencent.shootgame"

    const-string v20, "com.tencent.tmgp.NBA"

    const-string v21, "com.tencent.tmgp.cf"

    const-string v22, "com.tencent.tmgp.pubgm"

    const-string v23, "com.tencent.tmgp.pubgmhd"

    const-string v24, "com.qqgame.mic"

    const-string v25, "com.tencent.tmgp.bh3"

    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcn/nubiamini/server/appmgmt/BSPPkgNameList;->mSpecialPackageList:Ljava/util/List;

    .line 30
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

    sput-object v0, Lcn/nubiamini/server/appmgmt/BSPPkgNameList;->mVideoActivityList:Ljava/util/List;

    .line 36
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

    const-string/jumbo v118, "jianghu.lanjing.com.loading"

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

    const-string v150, "com.tencent.tmgp.speedmobile"

    const-string v151, "com.tencent.tmgp.pubgmhd"

    const-string v152, "com.tencent.tmgp.pubgm"

    const-string v153, "com.netease.wyclx.nubia"

    filled-new-array/range {v1 .. v153}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcn/nubiamini/server/appmgmt/BSPPkgNameList;->mPackageBlackList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method
