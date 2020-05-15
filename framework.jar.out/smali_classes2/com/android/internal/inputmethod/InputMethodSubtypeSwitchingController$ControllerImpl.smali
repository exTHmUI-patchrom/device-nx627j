.class public Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;
.super Ljava/lang/Object;
.source "InputMethodSubtypeSwitchingController.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControllerImpl"
.end annotation


# instance fields
.field private final mSwitchingAwareRotationList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

.field private final mSwitchingUnawareRotationList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;


# direct methods
.method private constructor <init>(Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;)V
    .locals 0
    .param p1, "switchingAwareRotationList"    # Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;
    .param p2, "switchingUnawareRotationList"    # Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    iput-object p1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingAwareRotationList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    .line 491
    iput-object p2, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingUnawareRotationList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    .line 492
    return-void
.end method

.method public static createFrom(Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;Ljava/util/List;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;
    .locals 4
    .param p0, "currentInstance"    # Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;",
            "Ljava/util/List<",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;)",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;"
        }
    .end annotation

    .line 450
    .local p1, "sortedEnabledItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    const/4 v0, 0x0

    .line 452
    .local v0, "switchingAwareRotationList":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;
    nop

    .line 453
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->filterImeSubtypeList(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    .line 455
    .local v1, "switchingAwareImeSubtypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    if-eqz p0, :cond_0

    iget-object v2, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingAwareRotationList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingAwareRotationList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    .line 457
    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->access$200(Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingAwareRotationList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    .line 462
    :cond_0
    if-nez v0, :cond_1

    .line 463
    new-instance v2, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;-><init>(Ljava/util/List;Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$1;)V

    move-object v0, v2

    .line 467
    .end local v1    # "switchingAwareImeSubtypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    :cond_1
    const/4 v1, 0x0

    .line 469
    .local v1, "switchingUnawareRotationList":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->filterImeSubtypeList(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v2

    .line 471
    .local v2, "switchingUnawareImeSubtypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    if-eqz p0, :cond_2

    iget-object v3, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingUnawareRotationList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingUnawareRotationList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    .line 474
    invoke-static {v3}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->access$400(Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;)Ljava/util/List;

    move-result-object v3

    .line 473
    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 477
    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingUnawareRotationList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    .line 479
    :cond_2
    if-nez v1, :cond_3

    .line 480
    new-instance v3, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    invoke-direct {v3, v2}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;-><init>(Ljava/util/List;)V

    move-object v1, v3

    .line 485
    .end local v2    # "switchingUnawareImeSubtypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    :cond_3
    new-instance v2, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;-><init>(Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;)V

    return-object v2
.end method

.method private static filterImeSubtypeList(Ljava/util/List;Z)Ljava/util/List;
    .locals 5
    .param p1, "supportsSwitchingToNextInputMethod"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation

    .line 534
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 535
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 536
    .local v1, "ALL_ITEMS_COUNT":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 537
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 538
    .local v3, "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    iget-object v4, v3, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->supportsSwitchingToNextInputMethod()Z

    move-result v4

    if-ne v4, p1, :cond_0

    .line 540
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    .end local v3    # "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 543
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected dump(Landroid/util/Printer;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;

    .line 547
    const-string v0, "    mSwitchingAwareRotationList:"

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingAwareRotationList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    const-string v1, "      "

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 549
    const-string v0, "    mSwitchingUnawareRotationList:"

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingUnawareRotationList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    const-string v1, "      "

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 551
    return-void
.end method

.method public getNextInputMethod(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Z)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .locals 1
    .param p1, "onlyCurrentIme"    # Z
    .param p2, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .param p4, "forward"    # Z

    .line 510
    if-nez p2, :cond_0

    .line 511
    const/4 v0, 0x0

    return-object v0

    .line 513
    :cond_0
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->supportsSwitchingToNextInputMethod()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingAwareRotationList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Z)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object v0

    return-object v0

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingUnawareRotationList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Z)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object v0

    return-object v0
.end method

.method public onUserActionLocked(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 1
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 523
    if-nez p1, :cond_0

    .line 524
    return-void

    .line 526
    :cond_0
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->supportsSwitchingToNextInputMethod()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingAwareRotationList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->onUserAction(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 529
    :cond_1
    return-void
.end method
