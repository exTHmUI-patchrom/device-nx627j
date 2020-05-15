.class public Landroid/view/RedPacketHelper;
.super Ljava/lang/Object;
.source "RedPacketHelper.java"


# static fields
.field private static final CLICK_RECEIVE_LIMIT_NUM:I = 0x1

.field private static DEBUG:Z = false

.field private static final DECORVIEW_NAME:Ljava/lang/String; = "com.android.internal.policy.DecorView"

.field private static final MM_UI_LAUNCHERUI:Ljava/lang/String; = "com.tencent.mm.ui.LauncherUI"

.field private static final MM_UI_LUCKYMONEY:Ljava/lang/String; = "com.tencent.mm.plugin.luckymoney.ui.LuckyMoneyReceiveUI"

.field private static final MM_UI_LUCKYMONEY_HOOK:Ljava/lang/String; = "com.tencent.mm.plugin.luckymoney.ui.LuckyMoneyNotHookReceiveUI"

.field private static final MSG_RED_PACKET_CANCEL:I = 0x33

.field private static final MSG_RED_PACKET_NORMAL:I = 0x32

.field private static final RED_PACKET_ENABLE:Ljava/lang/String; = "red_packet_enable"

.field private static final TAG:Ljava/lang/String; = "RedPacketHelper"

.field private static final WECHAT_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.mm"

.field private static sIsMM:Z

.field private static sReceiveNotify:Z


# instance fields
.field private volatile mClickReceiveNum:I

.field private mContext:Landroid/content/Context;

.field private mHandleChatRun:Ljava/lang/Runnable;

.field private mHandleReceiveRun:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mIsListUI:Z

.field private mIsReceiveUI:Z

.field private mIsVisibility:Z

.field private mMessengeHandler:Landroid/os/Handler;

.field private mNeedHelper:Z

.field private mRoot:Landroid/view/View;

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mUIReadyRun:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/RedPacketHelper;->sIsMM:Z

    .line 54
    sput-boolean v0, Landroid/view/RedPacketHelper;->sReceiveNotify:Z

    .line 55
    sput-boolean v0, Landroid/view/RedPacketHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/view/View;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/RedPacketHelper;->mNeedHelper:Z

    .line 60
    iput-boolean v0, p0, Landroid/view/RedPacketHelper;->mIsListUI:Z

    .line 61
    iput-boolean v0, p0, Landroid/view/RedPacketHelper;->mIsReceiveUI:Z

    .line 62
    iput-boolean v0, p0, Landroid/view/RedPacketHelper;->mIsVisibility:Z

    .line 65
    new-instance v0, Landroid/view/RedPacketHelper$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/view/RedPacketHelper$1;-><init>(Landroid/view/RedPacketHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/RedPacketHelper;->mMessengeHandler:Landroid/os/Handler;

    .line 79
    new-instance v0, Landroid/view/RedPacketHelper$2;

    invoke-direct {v0, p0}, Landroid/view/RedPacketHelper$2;-><init>(Landroid/view/RedPacketHelper;)V

    iput-object v0, p0, Landroid/view/RedPacketHelper;->mUIReadyRun:Ljava/lang/Runnable;

    .line 86
    new-instance v0, Landroid/view/RedPacketHelper$3;

    invoke-direct {v0, p0}, Landroid/view/RedPacketHelper$3;-><init>(Landroid/view/RedPacketHelper;)V

    iput-object v0, p0, Landroid/view/RedPacketHelper;->mHandleChatRun:Ljava/lang/Runnable;

    .line 96
    new-instance v0, Landroid/view/RedPacketHelper$4;

    invoke-direct {v0, p0}, Landroid/view/RedPacketHelper$4;-><init>(Landroid/view/RedPacketHelper;)V

    iput-object v0, p0, Landroid/view/RedPacketHelper;->mHandleReceiveRun:Ljava/lang/Runnable;

    .line 107
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/view/RedPacketHelper;->isNeedHelper(Landroid/content/Context;Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/RedPacketHelper;->mNeedHelper:Z

    .line 108
    iput-object p2, p0, Landroid/view/RedPacketHelper;->mRoot:Landroid/view/View;

    .line 109
    iput-object p1, p0, Landroid/view/RedPacketHelper;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {p0}, Landroid/view/RedPacketHelper;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Landroid/view/RedPacketHelper;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/RedPacketHelper;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic access$000(Landroid/view/RedPacketHelper;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/RedPacketHelper;

    .line 41
    iget-boolean v0, p0, Landroid/view/RedPacketHelper;->mIsVisibility:Z

    return v0
.end method

.method static synthetic access$100(Landroid/view/RedPacketHelper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/view/RedPacketHelper;

    .line 41
    iget-object v0, p0, Landroid/view/RedPacketHelper;->mHandleChatRun:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/RedPacketHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/view/RedPacketHelper;

    .line 41
    iget-object v0, p0, Landroid/view/RedPacketHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 41
    sput-boolean p0, Landroid/view/RedPacketHelper;->sReceiveNotify:Z

    return p0
.end method

.method static synthetic access$400(Landroid/view/RedPacketHelper;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/RedPacketHelper;

    .line 41
    invoke-direct {p0}, Landroid/view/RedPacketHelper;->onUIReady()V

    return-void
.end method

.method static synthetic access$500(Landroid/view/RedPacketHelper;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/RedPacketHelper;

    .line 41
    iget-boolean v0, p0, Landroid/view/RedPacketHelper;->mIsListUI:Z

    return v0
.end method

.method static synthetic access$600(Landroid/view/RedPacketHelper;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/RedPacketHelper;

    .line 41
    invoke-direct {p0}, Landroid/view/RedPacketHelper;->handleChatList()V

    return-void
.end method

.method static synthetic access$700(Landroid/view/RedPacketHelper;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/RedPacketHelper;

    .line 41
    iget-boolean v0, p0, Landroid/view/RedPacketHelper;->mIsReceiveUI:Z

    return v0
.end method

.method static synthetic access$800(Landroid/view/RedPacketHelper;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/RedPacketHelper;

    .line 41
    invoke-direct {p0}, Landroid/view/RedPacketHelper;->handleLuckyReceive()V

    return-void
.end method

.method private clickView(Landroid/view/View;)V
    .locals 23
    .param p1, "view"    # Landroid/view/View;

    move-object/from16 v0, p0

    .line 220
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 221
    .local v1, "rect":Landroid/graphics/Rect;
    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 222
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 223
    .local v3, "x":I
    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 224
    .local v4, "y":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 225
    .local v13, "now":J
    int-to-float v10, v3

    int-to-float v11, v4

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-wide v5, v13

    move-wide v7, v13

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    .line 226
    .local v5, "eventD":Landroid/view/MotionEvent;
    iget-object v6, v0, Landroid/view/RedPacketHelper;->mRoot:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 227
    .local v6, "down":Z
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 228
    const-wide/16 v7, 0x1

    add-long v15, v13, v7

    add-long v17, v13, v7

    int-to-float v7, v3

    int-to-float v8, v4

    const/16 v19, 0x1

    const/16 v22, 0x0

    move/from16 v20, v7

    move/from16 v21, v8

    invoke-static/range {v15 .. v22}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v7

    .line 229
    .local v7, "eventU":Landroid/view/MotionEvent;
    iget-object v8, v0, Landroid/view/RedPacketHelper;->mRoot:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 230
    .local v8, "up":Z
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 231
    return-void
.end method

.method private enableGrabPacket()Z
    .locals 3

    .line 130
    iget-object v0, p0, Landroid/view/RedPacketHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "red_packet_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 132
    .local v0, "settingValue":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private findLuckyButton(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 254
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 256
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 257
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 258
    .local v0, "group":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 259
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 260
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, v2, p2}, Landroid/view/RedPacketHelper;->findLuckyButton(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 258
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 263
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method private findViewByText(Landroid/view/View;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 203
    .local p3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p3, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    .line 204
    :cond_0
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 205
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "sub":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    .end local v0    # "text":Ljava/lang/String;
    .end local v1    # "sub":Ljava/lang/String;
    :cond_1
    goto :goto_1

    :cond_2
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 211
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 212
    .local v0, "group":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 213
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 214
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, v2, p2, p3}, Landroid/view/RedPacketHelper;->findViewByText(Landroid/view/View;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 212
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_3
    :goto_1
    return-void

    .line 203
    :cond_4
    :goto_2
    return-void
.end method

.method private getActivityClsName(Landroid/view/View;)Ljava/lang/String;
    .locals 4
    .param p1, "root"    # Landroid/view/View;

    .line 193
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getActivityName"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 194
    .local v0, "getWindow":Ljava/lang/reflect/Method;
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .local v1, "name":Ljava/lang/String;
    return-object v1

    .line 196
    .end local v0    # "getWindow":Ljava/lang/reflect/Method;
    .end local v1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 199
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleChatList()V
    .locals 5

    .line 234
    const-string v0, "RedPacketHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleChatList mIsVisibility="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/view/RedPacketHelper;->mIsVisibility:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-boolean v0, p0, Landroid/view/RedPacketHelper;->mIsVisibility:Z

    if-nez v0, :cond_0

    return-void

    .line 236
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v1, p0, Landroid/view/RedPacketHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x30c008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "wechatRedPacketTextClick":Ljava/lang/String;
    iget-object v2, p0, Landroid/view/RedPacketHelper;->mRoot:Landroid/view/View;

    invoke-direct {p0, v2, v1, v0}, Landroid/view/RedPacketHelper;->findViewByText(Landroid/view/View;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 239
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 240
    iget-object v2, p0, Landroid/view/RedPacketHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x30c008b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 241
    iget-object v2, p0, Landroid/view/RedPacketHelper;->mRoot:Landroid/view/View;

    invoke-direct {p0, v2, v1, v0}, Landroid/view/RedPacketHelper;->findViewByText(Landroid/view/View;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 243
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 244
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_4

    .line 245
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 246
    .local v3, "parent":Landroid/view/ViewParent;
    if-eqz v3, :cond_3

    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_3

    .line 247
    move-object v4, v3

    check-cast v4, Landroid/view/View;

    invoke-direct {p0, v4}, Landroid/view/RedPacketHelper;->clickView(Landroid/view/View;)V

    .line 248
    goto :goto_1

    .line 244
    .end local v3    # "parent":Landroid/view/ViewParent;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 251
    .end local v2    # "i":I
    :cond_4
    :goto_1
    return-void
.end method

.method private handleLuckyReceive()V
    .locals 7

    .line 266
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/RedPacketHelper;->sReceiveNotify:Z

    .line 267
    const-string v1, "RedPacketHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle lucky money receive mIsReceiveUI="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Landroid/view/RedPacketHelper;->mIsReceiveUI:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget v1, p0, Landroid/view/RedPacketHelper;->mClickReceiveNum:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 269
    const-string v0, "RedPacketHelper"

    const-string v1, "findLuckyButton mClickReceiveNum < 1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-void

    .line 272
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 274
    iget-object v3, p0, Landroid/view/RedPacketHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x30c008e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, "wechatSendOneRedPacket":Ljava/lang/String;
    iget-object v4, p0, Landroid/view/RedPacketHelper;->mRoot:Landroid/view/View;

    invoke-direct {p0, v4, v3, v1}, Landroid/view/RedPacketHelper;->findViewByText(Landroid/view/View;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 277
    .end local v3    # "wechatSendOneRedPacket":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 278
    iget-object v3, p0, Landroid/view/RedPacketHelper;->mRoot:Landroid/view/View;

    const-string/jumbo v4, "packet"

    invoke-direct {p0, v3, v4, v1}, Landroid/view/RedPacketHelper;->findViewByText(Landroid/view/View;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 280
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 281
    iget-object v3, p0, Landroid/view/RedPacketHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x30c008f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, "wechatSendOneRedPacketHK":Ljava/lang/String;
    iget-object v4, p0, Landroid/view/RedPacketHelper;->mRoot:Landroid/view/View;

    invoke-direct {p0, v4, v3, v1}, Landroid/view/RedPacketHelper;->findViewByText(Landroid/view/View;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 284
    .end local v3    # "wechatSendOneRedPacketHK":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 285
    iget-object v3, p0, Landroid/view/RedPacketHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x30c0090

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, "wechatSendOneRedPacketTW":Ljava/lang/String;
    iget-object v4, p0, Landroid/view/RedPacketHelper;->mRoot:Landroid/view/View;

    invoke-direct {p0, v4, v3, v1}, Landroid/view/RedPacketHelper;->findViewByText(Landroid/view/View;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 288
    .end local v3    # "wechatSendOneRedPacketTW":Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    return-void

    .line 290
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v3, "buttonList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v4, p0, Landroid/view/RedPacketHelper;->mRoot:Landroid/view/View;

    invoke-direct {p0, v4, v3}, Landroid/view/RedPacketHelper;->findLuckyButton(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 292
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 293
    nop

    .line 293
    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 294
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 295
    .local v4, "button":Landroid/widget/Button;
    invoke-virtual {v4}, Landroid/widget/Button;->getWidth()I

    move-result v5

    if-lez v5, :cond_6

    invoke-virtual {v4}, Landroid/widget/Button;->getHeight()I

    move-result v5

    if-lez v5, :cond_6

    .line 296
    const-string v5, "RedPacketHelper"

    const-string/jumbo v6, "lucky button perform click"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {v4}, Landroid/widget/Button;->performClick()Z

    .line 293
    .end local v4    # "button":Landroid/widget/Button;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    .end local v0    # "i":I
    :cond_7
    iget v0, p0, Landroid/view/RedPacketHelper;->mClickReceiveNum:I

    sub-int/2addr v0, v2

    iput v0, p0, Landroid/view/RedPacketHelper;->mClickReceiveNum:I

    goto :goto_1

    .line 302
    :cond_8
    const-string v0, "RedPacketHelper"

    const-string/jumbo v2, "not find lucky button"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :goto_1
    return-void
.end method

.method private isNeedHelper(Landroid/content/Context;Landroid/view/View;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/view/View;

    .line 150
    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 151
    :cond_0
    const-string v1, "com.android.internal.policy.DecorView"

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 152
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "pkg":Ljava/lang/String;
    const-string v2, "com.tencent.mm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 154
    :cond_2
    const/4 v2, 0x1

    sput-boolean v2, Landroid/view/RedPacketHelper;->sIsMM:Z

    .line 155
    invoke-direct {p0, p2}, Landroid/view/RedPacketHelper;->getActivityClsName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "cls":Ljava/lang/String;
    if-nez v3, :cond_3

    return v0

    .line 157
    :cond_3
    const-string v4, "com.tencent.mm.ui.LauncherUI"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Landroid/view/RedPacketHelper;->mIsListUI:Z

    .line 158
    sput-boolean v0, Landroid/view/RedPacketHelper;->sReceiveNotify:Z

    .line 159
    iget-boolean v4, p0, Landroid/view/RedPacketHelper;->mIsListUI:Z

    if-eqz v4, :cond_5

    .line 160
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 161
    .local v4, "uid":I
    new-instance v5, Landroid/os/Messenger;

    iget-object v6, p0, Landroid/view/RedPacketHelper;->mMessengeHandler:Landroid/os/Handler;

    invoke-direct {v5, v6}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v5}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 162
    .local v5, "binder":Landroid/os/IBinder;
    invoke-virtual {p0}, Landroid/view/RedPacketHelper;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v6

    .line 164
    .local v6, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v6, :cond_4

    .line 165
    :try_start_0
    invoke-interface {v6, v5, v4}, Lcom/android/internal/statusbar/IStatusBarService;->setMessengerRedPacket(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v7

    .line 168
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v4    # "uid":I
    .end local v5    # "binder":Landroid/os/IBinder;
    .end local v6    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    .end local v7    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 169
    .restart local v4    # "uid":I
    .restart local v5    # "binder":Landroid/os/IBinder;
    .restart local v6    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_4
    :goto_0
    nop

    .line 171
    .end local v4    # "uid":I
    .end local v5    # "binder":Landroid/os/IBinder;
    .end local v6    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_5
    :goto_1
    const-string v4, "com.tencent.mm.plugin.luckymoney.ui.LuckyMoneyReceiveUI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "com.tencent.mm.plugin.luckymoney.ui.LuckyMoneyNotHookReceiveUI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    move v4, v0

    goto :goto_3

    :cond_7
    :goto_2
    move v4, v2

    :goto_3
    iput-boolean v4, p0, Landroid/view/RedPacketHelper;->mIsReceiveUI:Z

    .line 172
    iget-boolean v4, p0, Landroid/view/RedPacketHelper;->mIsReceiveUI:Z

    if-eqz v4, :cond_8

    .line 173
    iput v2, p0, Landroid/view/RedPacketHelper;->mClickReceiveNum:I

    .line 175
    :cond_8
    iget-boolean v4, p0, Landroid/view/RedPacketHelper;->mIsListUI:Z

    if-nez v4, :cond_a

    iget-boolean v4, p0, Landroid/view/RedPacketHelper;->mIsReceiveUI:Z

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    goto :goto_5

    :cond_a
    :goto_4
    move v0, v2

    :goto_5
    return v0
.end method

.method public static noteNotificationEnqueue(Landroid/app/Notification;Landroid/content/Context;)V
    .locals 1
    .param p0, "n"    # Landroid/app/Notification;
    .param p1, "context"    # Landroid/content/Context;

    .line 308
    sget-boolean v0, Landroid/view/RedPacketHelper;->sIsMM:Z

    if-nez v0, :cond_0

    return-void

    .line 327
    :cond_0
    return-void
.end method

.method private onUIReady()V
    .locals 1

    .line 137
    :try_start_0
    iget-boolean v0, p0, Landroid/view/RedPacketHelper;->mIsListUI:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/view/RedPacketHelper;->sReceiveNotify:Z

    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0}, Landroid/view/RedPacketHelper;->handleChatList()V

    goto :goto_0

    .line 139
    :cond_0
    iget-boolean v0, p0, Landroid/view/RedPacketHelper;->mIsReceiveUI:Z

    if-eqz v0, :cond_1

    .line 140
    invoke-direct {p0}, Landroid/view/RedPacketHelper;->handleLuckyReceive()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_1
    :goto_0
    goto :goto_1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method


# virtual methods
.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .line 180
    :try_start_0
    iget-object v0, p0, Landroid/view/RedPacketHelper;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 181
    const-string/jumbo v0, "statusbar"

    .line 182
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 181
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Landroid/view/RedPacketHelper;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    .end local p0    # "this":Landroid/view/RedPacketHelper;
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/view/RedPacketHelper;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0

    .line 187
    .restart local p0    # "this":Landroid/view/RedPacketHelper;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Landroid/view/RedPacketHelper;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method noteAppVisiblity(Z)V
    .locals 0
    .param p1, "isVisibility"    # Z

    .line 126
    iput-boolean p1, p0, Landroid/view/RedPacketHelper;->mIsVisibility:Z

    .line 127
    return-void
.end method

.method noteUIReady()V
    .locals 5

    .line 118
    iget-boolean v0, p0, Landroid/view/RedPacketHelper;->mNeedHelper:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/view/RedPacketHelper;->enableGrabPacket()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    const/16 v0, 0x12c

    .line 120
    .local v0, "delay":I
    iget-boolean v1, p0, Landroid/view/RedPacketHelper;->mIsReceiveUI:Z

    if-eqz v1, :cond_1

    const/16 v0, 0x1f4

    .line 121
    :cond_1
    iget-object v1, p0, Landroid/view/RedPacketHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/view/RedPacketHelper;->mUIReadyRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 122
    iget-object v1, p0, Landroid/view/RedPacketHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/view/RedPacketHelper;->mUIReadyRun:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    return-void

    .line 118
    .end local v0    # "delay":I
    :cond_2
    :goto_0
    return-void
.end method
