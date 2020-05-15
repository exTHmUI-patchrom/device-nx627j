.class final Landroid/widget/Editor$ProcessTextIntentActionsHandler;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ProcessTextIntentActionsHandler"
.end annotation


# instance fields
.field private final mAccessibilityActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessibilityIntents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mEditor:Landroid/widget/Editor;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageName:Ljava/lang/String;

.field private final mSupportedActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 1
    .param p1, "editor"    # Landroid/widget/Editor;

    .line 6883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6878
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mAccessibilityIntents:Landroid/util/SparseArray;

    .line 6879
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mAccessibilityActions:Landroid/util/SparseArray;

    .line 6881
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mSupportedActivities:Ljava/util/List;

    .line 6884
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Editor;

    iput-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mEditor:Landroid/widget/Editor;

    .line 6885
    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mEditor:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mTextView:Landroid/widget/TextView;

    .line 6886
    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mContext:Landroid/content/Context;

    .line 6887
    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager;

    iput-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6888
    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mPackageName:Ljava/lang/String;

    .line 6889
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Editor;
    .param p2, "x1"    # Landroid/widget/Editor$1;

    .line 6871
    invoke-direct {p0, p1}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method private createProcessTextIntent()Landroid/content/Intent;
    .locals 2

    .line 6999
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.PROCESS_TEXT"

    .line 7000
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "text/plain"

    .line 7001
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 6999
    return-object v0
.end method

.method private createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .line 6993
    invoke-direct {p0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->createProcessTextIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.PROCESS_TEXT_READONLY"

    iget-object v2, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mTextView:Landroid/widget/TextView;

    .line 6994
    invoke-virtual {v2}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 6995
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 6993
    return-object v0
.end method

.method private fireIntent(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 6958
    if-eqz p1, :cond_0

    const-string v0, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6959
    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    .line 6960
    .local v0, "selectedText":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->trimToParcelableSize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 6961
    const-string v1, "android.intent.extra.PROCESS_TEXT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6962
    iget-object v1, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mEditor:Landroid/widget/Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/widget/Editor;->access$4902(Landroid/widget/Editor;Z)Z

    .line 6963
    iget-object v1, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mTextView:Landroid/widget/TextView;

    const/16 v3, 0x64

    invoke-virtual {v1, p1, v3}, Landroid/widget/TextView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 6964
    return v2

    .line 6966
    .end local v0    # "selectedText":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getLabel(Landroid/content/pm/ResolveInfo;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 7005
    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private isSupportedActivity(Landroid/content/pm/ResolveInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .line 6985
    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mPackageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mContext:Landroid/content/Context;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 6988
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 6985
    :goto_1
    return v0
.end method

.method private loadSupportedActivities()V
    .locals 5

    .line 6970
    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mSupportedActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6971
    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->canStartActivityForResult()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6972
    return-void

    .line 6974
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 6975
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    nop

    .line 6976
    invoke-direct {p0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->createProcessTextIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 6977
    .local v1, "unfiltered":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 6978
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v3}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->isSupportedActivity(Landroid/content/pm/ResolveInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6979
    iget-object v4, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mSupportedActivities:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6981
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    goto :goto_0

    .line 6982
    :cond_2
    return-void
.end method


# virtual methods
.method public initializeAccessibilityActions()V
    .locals 7

    .line 6921
    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mAccessibilityIntents:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 6922
    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mAccessibilityActions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 6923
    const/4 v0, 0x0

    .line 6924
    .local v0, "i":I
    invoke-direct {p0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->loadSupportedActivities()V

    .line 6925
    iget-object v1, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mSupportedActivities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 6926
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const v3, 0x10000100

    add-int/lit8 v4, v0, 0x1

    .local v4, "i":I
    add-int/2addr v3, v0

    .line 6927
    .end local v0    # "i":I
    .local v3, "actionId":I
    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mAccessibilityActions:Landroid/util/SparseArray;

    new-instance v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 6930
    invoke-direct {p0, v2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->getLabel(Landroid/content/pm/ResolveInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 6927
    invoke-virtual {v0, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6931
    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mAccessibilityIntents:Landroid/util/SparseArray;

    .line 6932
    invoke-direct {p0, v2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    move-result-object v5

    .line 6931
    invoke-virtual {v0, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6933
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v3    # "actionId":I
    nop

    .line 6925
    move v0, v4

    goto :goto_0

    .line 6934
    .end local v4    # "i":I
    .restart local v0    # "i":I
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "nodeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 6942
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mAccessibilityActions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 6943
    iget-object v1, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mAccessibilityActions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 6942
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6945
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public onInitializeMenu(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .line 6895
    invoke-direct {p0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->loadSupportedActivities()V

    .line 6896
    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mSupportedActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 6897
    .local v0, "size":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 6898
    iget-object v3, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mSupportedActivities:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 6899
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const/16 v4, 0x64

    add-int/2addr v4, v2

    .line 6901
    invoke-direct {p0, v3}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->getLabel(Landroid/content/pm/ResolveInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 6899
    invoke-interface {p1, v1, v1, v4, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 6902
    invoke-direct {p0, v3}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v4

    .line 6903
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 6897
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6905
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(I)Z
    .locals 1
    .param p1, "actionId"    # I

    .line 6954
    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mAccessibilityIntents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-direct {p0, v0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->fireIntent(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public performMenuItemAction(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 6914
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->fireIntent(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
