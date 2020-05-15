.class public Landroid/view/ViewRootImplUtils;
.super Ljava/lang/Object;
.source "ViewRootImplUtils.java"


# static fields
.field private static final MAX_ELEMENT_LENGTH:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ViewRootImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeWindowType(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 6
    .param p0, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 10
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x0

    const/16 v2, 0x7d5

    if-eq v0, v2, :cond_0

    .line 11
    return v1

    .line 14
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .local v0, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "android.view.ViewRootImplUtils.changeWindowType"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    const-string v2, "android.view.ViewRootImpl.setView"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    const-string v2, "android.view.WindowManagerGlobal.addView"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    const-string v2, "android.view.WindowManagerImpl.addView"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    const-string v2, "android.widget.Toast$TN.handleShow"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :try_start_0
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 23
    .local v2, "array":[Ljava/lang/StackTraceElement;
    array-length v3, v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 24
    return v1

    .line 26
    :cond_1
    move v3, v1

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 27
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aget-object v5, v2, v3

    invoke-static {v5}, Landroid/view/ViewRootImplUtils;->elementToString(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 28
    const/16 v4, 0x7d3

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->type:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    const/4 v1, 0x1

    return v1

    .line 26
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 35
    .end local v2    # "array":[Ljava/lang/StackTraceElement;
    .end local v3    # "i":I
    :cond_3
    nop

    .line 36
    return v1

    .line 32
    :catch_0
    move-exception v2

    .line 33
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "ViewRootImpl"

    const-string v4, "changeWindowType error "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    return v1
.end method

.method private static elementToString(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 2
    .param p0, "element"    # Ljava/lang/StackTraceElement;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 41
    .local v0, "strBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
