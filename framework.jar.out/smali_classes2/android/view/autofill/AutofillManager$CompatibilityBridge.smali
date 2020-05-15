.class final Landroid/view/autofill/AutofillManager$CompatibilityBridge;
.super Ljava/lang/Object;
.source "AutofillManager.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/AutofillManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CompatibilityBridge"
.end annotation


# instance fields
.field mCompatServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mFocusedBounds:Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mFocusedNodeId:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mFocusedWindowId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mTempBounds:Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field final synthetic this$0:Landroid/view/autofill/AutofillManager;


# direct methods
.method constructor <init>(Landroid/view/autofill/AutofillManager;)V
    .locals 2

    .line 2265
    iput-object p1, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2250
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedBounds:Landroid/graphics/Rect;

    .line 2252
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mTempBounds:Landroid/graphics/Rect;

    .line 2255
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedWindowId:I

    .line 2257
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v0, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedNodeId:J

    .line 2266
    invoke-static {p1}, Landroid/view/autofill/AutofillManager;->access$500(Landroid/view/autofill/AutofillManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    .line 2267
    .local p1, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityManager;->setAccessibilityPolicy(Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;)V

    .line 2268
    return-void
.end method

.method static synthetic access$200(Landroid/view/autofill/AutofillManager$CompatibilityBridge;)I
    .locals 1
    .param p0, "x0"    # Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    .line 2249
    iget v0, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedWindowId:I

    return v0
.end method

.method static synthetic access$300(Landroid/view/autofill/AutofillManager$CompatibilityBridge;)J
    .locals 2
    .param p0, "x0"    # Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    .line 2249
    iget-wide v0, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedNodeId:J

    return-wide v0
.end method

.method static synthetic access$400(Landroid/view/autofill/AutofillManager$CompatibilityBridge;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    .line 2249
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method private findViewByAccessibilityId(IJ)Landroid/view/View;
    .locals 3
    .param p1, "windowId"    # I
    .param p2, "nodeId"    # J

    .line 2467
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v0}, Landroid/view/autofill/AutofillManager;->access$700(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 2468
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-nez v0, :cond_0

    .line 2469
    const/4 v1, 0x0

    return-object v1

    .line 2471
    :cond_0
    invoke-static {p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v1

    .line 2472
    .local v1, "viewId":I
    invoke-interface {v0, v1, p1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientFindViewByAccessibilityIdTraversal(II)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method private findVirtualNodeByAccessibilityId(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualId"    # I

    .line 2476
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 2477
    .local v0, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v0, :cond_0

    .line 2478
    const/4 v1, 0x0

    return-object v1

    .line 2480
    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1
.end method

.method private getCompatServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 7

    .line 2271
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v0}, Landroid/view/autofill/AutofillManager;->access$600(Landroid/view/autofill/AutofillManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2272
    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mCompatServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    if-eqz v1, :cond_0

    .line 2273
    iget-object v1, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mCompatServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    monitor-exit v0

    return-object v1

    .line 2275
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2276
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "android"

    const-string v4, "com.android.server.autofill.AutofillCompatAccessibilityService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2278
    iget-object v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v2}, Landroid/view/autofill/AutofillManager;->access$500(Landroid/view/autofill/AutofillManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const v3, 0x100080

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2281
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    :try_start_1
    new-instance v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget-object v4, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v4}, Landroid/view/autofill/AutofillManager;->access$500(Landroid/view/autofill/AutofillManager;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V

    iput-object v3, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mCompatServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2285
    nop

    .line 2286
    :try_start_2
    iget-object v3, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mCompatServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    monitor-exit v0

    return-object v3

    .line 2282
    :catch_0
    move-exception v3

    .line 2283
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "AutofillManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot find compat autofill service:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Cannot find compat autofill service"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2287
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private isVirtualNode(I)Z
    .locals 1
    .param p1, "nodeId"    # I

    .line 2484
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyValueChanged(IJ)V
    .locals 5
    .param p1, "windowId"    # I
    .param p2, "nodeId"    # J

    .line 2427
    invoke-static {p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    .line 2428
    .local v0, "virtualId":I
    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->isVirtualNode(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2429
    return-void

    .line 2431
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->findViewByAccessibilityId(IJ)Landroid/view/View;

    move-result-object v1

    .line 2432
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_1

    .line 2433
    return-void

    .line 2435
    :cond_1
    invoke-direct {p0, v1, v0}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->findVirtualNodeByAccessibilityId(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 2436
    .local v2, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v2, :cond_2

    .line 2437
    return-void

    .line 2439
    :cond_2
    iget-object v3, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    .line 2440
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object v4

    .line 2439
    invoke-virtual {v3, v1, v0, v4}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;ILandroid/view/autofill/AutofillValue;)V

    .line 2441
    return-void
.end method

.method private notifyViewClicked(IJ)V
    .locals 4
    .param p1, "windowId"    # I
    .param p2, "nodeId"    # J

    .line 2444
    invoke-static {p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    .line 2445
    .local v0, "virtualId":I
    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->isVirtualNode(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2446
    return-void

    .line 2448
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->findViewByAccessibilityId(IJ)Landroid/view/View;

    move-result-object v1

    .line 2449
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_1

    .line 2450
    return-void

    .line 2452
    :cond_1
    invoke-direct {p0, v1, v0}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->findVirtualNodeByAccessibilityId(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 2453
    .local v2, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v2, :cond_2

    .line 2454
    return-void

    .line 2456
    :cond_2
    iget-object v3, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-virtual {v3, v1, v0}, Landroid/view/autofill/AutofillManager;->notifyViewClicked(Landroid/view/View;I)V

    .line 2457
    return-void
.end method

.method private notifyViewEntered(IJLandroid/graphics/Rect;)Z
    .locals 6
    .param p1, "windowId"    # I
    .param p2, "nodeId"    # J
    .param p4, "focusedBounds"    # Landroid/graphics/Rect;

    .line 2389
    invoke-static {p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    .line 2390
    .local v0, "virtualId":I
    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->isVirtualNode(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2391
    return v2

    .line 2393
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->findViewByAccessibilityId(IJ)Landroid/view/View;

    move-result-object v1

    .line 2394
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_1

    .line 2395
    return v2

    .line 2397
    :cond_1
    invoke-direct {p0, v1, v0}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->findVirtualNodeByAccessibilityId(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 2398
    .local v3, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v3, :cond_2

    .line 2399
    return v2

    .line 2401
    :cond_2
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2402
    return v2

    .line 2404
    :cond_3
    iget-object v4, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mTempBounds:Landroid/graphics/Rect;

    .line 2405
    .local v4, "newBounds":Landroid/graphics/Rect;
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2406
    invoke-virtual {v4, p4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2407
    return v2

    .line 2409
    :cond_4
    invoke-virtual {p4, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2410
    iget-object v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-virtual {v2, v1, v0, v4}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;)V

    .line 2411
    const/4 v2, 0x1

    return v2
.end method

.method private notifyViewExited(IJ)V
    .locals 3
    .param p1, "windowId"    # I
    .param p2, "nodeId"    # J

    .line 2415
    invoke-static {p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    .line 2416
    .local v0, "virtualId":I
    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->isVirtualNode(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2417
    return-void

    .line 2419
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->findViewByAccessibilityId(IJ)Landroid/view/View;

    move-result-object v1

    .line 2420
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_1

    .line 2421
    return-void

    .line 2423
    :cond_1
    iget-object v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-virtual {v2, v1, v0}, Landroid/view/autofill/AutofillManager;->notifyViewExited(Landroid/view/View;I)V

    .line 2424
    return-void
.end method

.method private updateTrackedViewsLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 2461
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v0}, Landroid/view/autofill/AutofillManager;->access$800(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$TrackedViews;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2462
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v0}, Landroid/view/autofill/AutofillManager;->access$800(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$TrackedViews;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager$TrackedViews;->onVisibleForAutofillChangedLocked()V

    .line 2464
    :cond_0
    return-void
.end method


# virtual methods
.method public getEnabledAccessibilityServiceList(ILjava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "feedbackTypeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .line 2316
    .local p2, "enabledService":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    if-nez p2, :cond_0

    .line 2317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p2, v0

    .line 2319
    :cond_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->getCompatServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2320
    return-object p2
.end method

.method public getInstalledAccessibilityServiceList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .line 2306
    .local p1, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    if-nez p1, :cond_0

    .line 2307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p1, v0

    .line 2309
    :cond_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->getCompatServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2310
    return-object p1
.end method

.method public getRelevantEventTypes(I)I
    .locals 1
    .param p1, "relevantEventTypes"    # I

    .line 2297
    or-int/lit8 v0, p1, 0x8

    or-int/lit8 v0, v0, 0x10

    or-int/lit8 v0, v0, 0x1

    or-int/lit16 v0, v0, 0x800

    return v0
.end method

.method public isEnabled(Z)Z
    .locals 1
    .param p1, "accessibilityEnabled"    # Z

    .line 2292
    const/4 v0, 0x1

    return v0
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;ZI)Landroid/view/accessibility/AccessibilityEvent;
    .locals 8
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "accessibilityEnabled"    # Z
    .param p3, "relevantEventTypes"    # I

    .line 2326
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 2327
    .local v0, "type":I
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    .line 2329
    const-string v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAccessibilityEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "): virtualId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2331
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", client="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    .line 2332
    invoke-static {v3}, Landroid/view/autofill/AutofillManager;->access$700(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2329
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    const/16 v1, 0x800

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    .line 2373
    :cond_1
    iget-object v1, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v1}, Landroid/view/autofill/AutofillManager;->access$700(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v1

    .line 2374
    .local v1, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-eqz v1, :cond_a

    .line 2375
    iget-object v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v2}, Landroid/view/autofill/AutofillManager;->access$600(Landroid/view/autofill/AutofillManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2376
    :try_start_0
    invoke-interface {v1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientIsFillUiShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2377
    iget v3, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedWindowId:I

    iget-wide v4, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedNodeId:J

    iget-object v6, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v4, v5, v6}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->notifyViewEntered(IJLandroid/graphics/Rect;)Z

    .line 2379
    :cond_2
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->updateTrackedViewsLocked()V

    .line 2380
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2358
    .end local v1    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    :cond_3
    iget-object v1, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v1}, Landroid/view/autofill/AutofillManager;->access$600(Landroid/view/autofill/AutofillManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2359
    :try_start_1
    iget v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedWindowId:I

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v3

    if-ne v2, v3, :cond_4

    iget-wide v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedNodeId:J

    .line 2360
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 2361
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->notifyValueChanged(IJ)V

    .line 2363
    :cond_4
    monitor-exit v1

    .line 2364
    goto :goto_0

    .line 2363
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 2336
    :cond_5
    iget-object v1, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v1}, Landroid/view/autofill/AutofillManager;->access$600(Landroid/view/autofill/AutofillManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2337
    :try_start_2
    iget v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedWindowId:I

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v3

    if-ne v2, v3, :cond_6

    iget-wide v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedNodeId:J

    .line 2338
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    .line 2339
    monitor-exit v1

    return-object p1

    .line 2341
    :cond_6
    iget v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedWindowId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    iget-wide v4, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedNodeId:J

    sget-wide v6, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_7

    .line 2343
    iget v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedWindowId:I

    iget-wide v4, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedNodeId:J

    invoke-direct {p0, v2, v4, v5}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->notifyViewExited(IJ)V

    .line 2344
    iput v3, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedWindowId:I

    .line 2345
    sget-wide v2, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedNodeId:J

    .line 2346
    iget-object v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2348
    :cond_7
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v2

    .line 2349
    .local v2, "windowId":I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v3

    .line 2350
    .local v3, "nodeId":J
    iget-object v5, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->notifyViewEntered(IJLandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2351
    iput v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedWindowId:I

    .line 2352
    iput-wide v3, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedNodeId:J

    .line 2354
    .end local v2    # "windowId":I
    .end local v3    # "nodeId":J
    :cond_8
    monitor-exit v1

    .line 2355
    goto :goto_0

    .line 2354
    :catchall_2
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v2

    .line 2367
    :cond_9
    iget-object v1, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v1}, Landroid/view/autofill/AutofillManager;->access$600(Landroid/view/autofill/AutofillManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2368
    :try_start_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->notifyViewClicked(IJ)V

    .line 2369
    monitor-exit v1

    .line 2370
    nop

    .line 2385
    :cond_a
    :goto_0
    if-eqz p2, :cond_b

    move-object v1, p1

    goto :goto_1

    :cond_b
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 2369
    :catchall_3
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v2
.end method
