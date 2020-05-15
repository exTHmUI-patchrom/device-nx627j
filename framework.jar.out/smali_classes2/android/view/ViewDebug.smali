.class public Landroid/view/ViewDebug;
.super Ljava/lang/Object;
.source "ViewDebug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewDebug$CanvasProvider;,
        Landroid/view/ViewDebug$HardwareCanvasProvider;,
        Landroid/view/ViewDebug$SoftwareCanvasProvider;,
        Landroid/view/ViewDebug$ViewOperation;,
        Landroid/view/ViewDebug$RecyclerTraceType;,
        Landroid/view/ViewDebug$HierarchyTraceType;,
        Landroid/view/ViewDebug$HierarchyHandler;,
        Landroid/view/ViewDebug$CapturedViewProperty;,
        Landroid/view/ViewDebug$FlagToString;,
        Landroid/view/ViewDebug$IntToString;,
        Landroid/view/ViewDebug$ExportedProperty;
    }
.end annotation


# static fields
.field private static final CAPTURE_TIMEOUT:I = 0xfa0

.field public static final DEBUG_DRAG:Z = false

.field public static final DEBUG_POSITIONING:Z = false

.field private static final REMOTE_COMMAND_CAPTURE:Ljava/lang/String; = "CAPTURE"

.field private static final REMOTE_COMMAND_CAPTURE_LAYERS:Ljava/lang/String; = "CAPTURE_LAYERS"

.field private static final REMOTE_COMMAND_DUMP:Ljava/lang/String; = "DUMP"

.field private static final REMOTE_COMMAND_DUMP_THEME:Ljava/lang/String; = "DUMP_THEME"

.field private static final REMOTE_COMMAND_INVALIDATE:Ljava/lang/String; = "INVALIDATE"

.field private static final REMOTE_COMMAND_OUTPUT_DISPLAYLIST:Ljava/lang/String; = "OUTPUT_DISPLAYLIST"

.field private static final REMOTE_COMMAND_REQUEST_LAYOUT:Ljava/lang/String; = "REQUEST_LAYOUT"

.field private static final REMOTE_PROFILE:Ljava/lang/String; = "PROFILE"

.field public static final TRACE_HIERARCHY:Z = false
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TRACE_RECYCLER:Z = false
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static mCapturedViewFieldsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static mCapturedViewMethodsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static sAnnotations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/reflect/AccessibleObject;",
            "Landroid/view/ViewDebug$ExportedProperty;",
            ">;"
        }
    .end annotation
.end field

.field private static sFieldsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static sMethodsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 321
    const/4 v0, 0x0

    sput-object v0, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    .line 322
    sput-object v0, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static callMethodOnAppropriateTheadBlocking(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 1121
    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_0

    .line 1122
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1125
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    .line 1126
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/view/ViewDebug$4;

    invoke-direct {v1, p0, v0}, Landroid/view/ViewDebug$4;-><init>(Ljava/lang/reflect/Method;Landroid/view/View;)V

    .line 1132
    .local v1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/concurrent/FutureTask;

    invoke-direct {v2, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1134
    .local v2, "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Object;>;"
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 1136
    .local v3, "handler":Landroid/os/Handler;
    if-nez v3, :cond_1

    .line 1137
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v3, v4

    .line 1139
    :cond_1
    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1142
    :goto_0
    const-wide/16 v4, 0xfa0

    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v6}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 1154
    :catch_0
    move-exception v4

    .line 1155
    .local v4, "e":Ljava/util/concurrent/CancellationException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Unexpected cancellation exception"

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 1152
    .end local v4    # "e":Ljava/util/concurrent/CancellationException;
    :catch_1
    move-exception v4

    .line 1156
    goto :goto_0

    .line 1143
    :catch_2
    move-exception v4

    .line 1144
    .local v4, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v4}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    .line 1145
    .local v5, "t":Ljava/lang/Throwable;
    instance-of v6, v5, Ljava/lang/IllegalAccessException;

    if-nez v6, :cond_3

    .line 1148
    instance-of v6, v5, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v6, :cond_2

    .line 1149
    move-object v6, v5

    check-cast v6, Ljava/lang/reflect/InvocationTargetException;

    throw v6

    .line 1151
    :cond_2
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Unexpected exception"

    invoke-direct {v6, v7, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1146
    :cond_3
    move-object v6, v5

    check-cast v6, Ljava/lang/IllegalAccessException;

    throw v6
.end method

.method public static capture(Landroid/view/View;Ljava/io/OutputStream;Landroid/view/View;)V
    .locals 4
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .param p2, "captureView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 749
    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/view/ViewDebug;->performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 751
    .local v0, "b":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 752
    const-string v1, "View"

    const-string v2, "Failed to create capture bitmap!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-static {v1, v3, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 759
    :cond_0
    const/4 v1, 0x0

    .line 761
    .local v1, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    const v3, 0x8000

    invoke-direct {v2, p1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v1, v2

    .line 762
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 763
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    nop

    .line 766
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 768
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 769
    nop

    .line 770
    return-void

    .line 765
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 766
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 768
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    throw v2
.end method

.method private static capture(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .param p2, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 742
    invoke-static {p0, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 743
    .local v0, "captureView":Landroid/view/View;
    invoke-static {p0, p1, v0}, Landroid/view/ViewDebug;->capture(Landroid/view/View;Ljava/io/OutputStream;Landroid/view/View;)V

    .line 744
    return-void
.end method

.method public static captureLayers(Landroid/view/View;Ljava/io/DataOutputStream;)V
    .locals 3
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 661
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    .local v0, "outRect":Landroid/graphics/Rect;
    :try_start_1
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    invoke-interface {v1, v2, v0}, Landroid/view/IWindowSession;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 666
    goto :goto_0

    .line 664
    :catch_0
    move-exception v1

    .line 668
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 669
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 671
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/view/ViewDebug;->captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    .line 673
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 675
    .end local v0    # "outRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    .line 676
    nop

    .line 677
    return-void

    .line 675
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    throw v0
.end method

.method private static captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V
    .locals 10
    .param p0, "view"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/DataOutputStream;
    .param p2, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 682
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 684
    .local v0, "localVisible":Z
    :goto_0
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    const/16 v4, 0x80

    and-int/2addr v3, v4

    if-eq v3, v4, :cond_4

    .line 685
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    .line 686
    .local v3, "id":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 687
    .local v4, "name":Ljava/lang/String;
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 688
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 691
    :cond_1
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 692
    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 693
    if-eqz v0, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 695
    const/4 v5, 0x2

    new-array v6, v5, [I

    .line 697
    .local v6, "position":[I
    invoke-virtual {p0, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 699
    aget v7, v6, v1

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 700
    aget v7, v6, v2

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 701
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 703
    invoke-static {p0, v2}, Landroid/view/ViewDebug;->performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 704
    .local v2, "b":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_3

    .line 705
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 706
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int/2addr v8, v9

    mul-int/2addr v8, v5

    invoke-direct {v7, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v5, v7

    .line 707
    .local v5, "arrayOut":Ljava/io/ByteArrayOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v2, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 708
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 709
    invoke-virtual {v5, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 711
    .end local v5    # "arrayOut":Ljava/io/ByteArrayOutputStream;
    :cond_3
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 714
    .end local v2    # "b":Landroid/graphics/Bitmap;
    .end local v3    # "id":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "position":[I
    :cond_4
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_5

    .line 715
    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    .line 716
    .local v2, "group":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 718
    .local v3, "count":I
    nop

    .local v1, "i":I
    :goto_2
    if-ge v1, v3, :cond_5

    .line 719
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, p1, v0}, Landroid/view/ViewDebug;->captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    .line 718
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 723
    .end local v1    # "i":I
    .end local v2    # "group":Landroid/view/ViewGroup;
    .end local v3    # "count":I
    :cond_5
    iget-object v1, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v1, :cond_6

    .line 724
    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v1

    iget-object v1, v1, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    .line 725
    .local v1, "overlayContainer":Landroid/view/ViewGroup;
    invoke-static {v1, p1, v0}, Landroid/view/ViewDebug;->captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    .line 727
    .end local v1    # "overlayContainer":Landroid/view/ViewGroup;
    :cond_6
    return-void
.end method

.method private static capturedViewExportFields(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1633
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 1634
    const-string/jumbo v0, "null"

    return-object v0

    .line 1637
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1638
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/view/ViewDebug;->capturedViewGetPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1640
    .local v1, "fields":[Ljava/lang/reflect/Field;
    array-length v2, v1

    .line 1641
    .local v2, "count":I
    const/4 v3, 0x0

    .line 1641
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1642
    aget-object v4, v1, v3

    .line 1644
    .local v4, "field":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1646
    .local v5, "fieldValue":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1647
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1648
    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1650
    if-eqz v5, :cond_1

    .line 1651
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    const-string v8, "\\n"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1652
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1653
    .end local v6    # "value":Ljava/lang/String;
    goto :goto_1

    .line 1654
    :cond_1
    const-string/jumbo v6, "null"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1656
    :goto_1
    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1660
    .end local v5    # "fieldValue":Ljava/lang/Object;
    goto :goto_2

    .line 1657
    :catch_0
    move-exception v5

    .line 1641
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1662
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1590
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 1591
    const-string/jumbo v0, "null"

    return-object v0

    .line 1594
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1595
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/view/ViewDebug;->capturedViewGetPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1597
    .local v1, "methods":[Ljava/lang/reflect/Method;
    array-length v2, v1

    .line 1598
    .local v2, "count":I
    const/4 v3, 0x0

    .line 1598
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 1599
    aget-object v4, v1, v3

    .line 1601
    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    :try_start_0
    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1602
    .local v5, "methodValue":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    .line 1604
    .local v6, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v7, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Landroid/view/ViewDebug$CapturedViewProperty;

    .line 1605
    .local v7, "property":Landroid/view/ViewDebug$CapturedViewProperty;
    invoke-interface {v7}, Landroid/view/ViewDebug$CapturedViewProperty;->retrieveReturn()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1607
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v8}, Landroid/view/ViewDebug;->capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1609
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1610
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1611
    const-string v8, "()="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1613
    if-eqz v5, :cond_2

    .line 1614
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\n"

    const-string v10, "\\n"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 1615
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1616
    .end local v8    # "value":Ljava/lang/String;
    goto :goto_1

    .line 1617
    :cond_2
    const-string/jumbo v8, "null"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1619
    :goto_1
    const-string v8, "; "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1619
    .end local v5    # "methodValue":Ljava/lang/Object;
    .end local v6    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "property":Landroid/view/ViewDebug$CapturedViewProperty;
    goto :goto_2

    .line 1624
    :catch_0
    move-exception v5

    .line 1624
    .end local v4    # "method":Ljava/lang/reflect/Method;
    goto :goto_3

    .line 1621
    .restart local v4    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v5

    .line 1627
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :goto_2
    nop

    .line 1598
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1629
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static capturedViewGetPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 1528
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 1529
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    .line 1531
    :cond_0
    sget-object v0, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    .line 1533
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Field;

    .line 1534
    .local v1, "fields":[Ljava/lang/reflect/Field;
    if-eqz v1, :cond_1

    .line 1535
    return-object v1

    .line 1538
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1539
    .local v2, "foundFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1541
    array-length v3, v1

    .line 1542
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 1543
    aget-object v5, v1, v4

    .line 1544
    .local v5, "field":Ljava/lang/reflect/Field;
    const-class v6, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1545
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1546
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1542
    .end local v5    # "field":Ljava/lang/reflect/Field;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1550
    .end local v4    # "i":I
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/reflect/Field;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, [Ljava/lang/reflect/Field;

    .line 1551
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1553
    return-object v1
.end method

.method private static capturedViewGetPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1557
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 1558
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    .line 1560
    :cond_0
    sget-object v0, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    .line 1562
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Method;>;"
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Method;

    .line 1563
    .local v1, "methods":[Ljava/lang/reflect/Method;
    if-eqz v1, :cond_1

    .line 1564
    return-object v1

    .line 1567
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1568
    .local v2, "foundMethods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1570
    array-length v3, v1

    .line 1571
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 1572
    aget-object v5, v1, v4

    .line 1573
    .local v5, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_2

    const-class v6, Landroid/view/ViewDebug$CapturedViewProperty;

    .line 1574
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1575
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Void;

    if-eq v6, v7, :cond_2

    .line 1576
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1577
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1571
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1581
    .end local v4    # "i":I
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/reflect/Method;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, [Ljava/lang/reflect/Method;

    .line 1582
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    return-object v1
.end method

.method static dispatchCommand(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;
    .param p3, "clientStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 441
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    .line 443
    const-string v0, "DUMP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 444
    const/4 v0, 0x1

    invoke-static {p0, v1, v0, p3}, Landroid/view/ViewDebug;->dump(Landroid/view/View;ZZLjava/io/OutputStream;)V

    goto :goto_0

    .line 445
    :cond_0
    const-string v0, "DUMP_THEME"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    invoke-static {p0, p3}, Landroid/view/ViewDebug;->dumpTheme(Landroid/view/View;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 447
    :cond_1
    const-string v0, "CAPTURE_LAYERS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 448
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p0, v0}, Landroid/view/ViewDebug;->captureLayers(Landroid/view/View;Ljava/io/DataOutputStream;)V

    goto :goto_0

    .line 450
    :cond_2
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "params":[Ljava/lang/String;
    const-string v2, "CAPTURE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 452
    aget-object v1, v0, v1

    invoke-static {p0, p3, v1}, Landroid/view/ViewDebug;->capture(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 453
    :cond_3
    const-string v2, "OUTPUT_DISPLAYLIST"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 454
    aget-object v1, v0, v1

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->outputDisplayList(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :cond_4
    const-string v2, "INVALIDATE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 456
    aget-object v1, v0, v1

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->invalidate(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 457
    :cond_5
    const-string v2, "REQUEST_LAYOUT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 458
    aget-object v1, v0, v1

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->requestLayout(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 459
    :cond_6
    const-string v2, "PROFILE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 460
    aget-object v1, v0, v1

    invoke-static {p0, p3, v1}, Landroid/view/ViewDebug;->profile(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 463
    .end local v0    # "params":[Ljava/lang/String;
    :cond_7
    :goto_0
    return-void
.end method

.method public static dump(Landroid/view/View;ZZLjava/io/OutputStream;)V
    .locals 10
    .param p0, "root"    # Landroid/view/View;
    .param p1, "skipChildren"    # Z
    .param p2, "includeProperties"    # Z
    .param p3, "clientStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 809
    const/4 v0, 0x0

    .line 811
    .local v0, "out":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string/jumbo v3, "utf-8"

    invoke-direct {v2, p3, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const v3, 0x8000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    move-object v0, v1

    .line 812
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 813
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 814
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    .line 815
    .local v2, "group":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v7, 0x0

    move-object v5, v2

    move-object v6, v0

    move v8, p1

    move v9, p2

    invoke-static/range {v4 .. v9}, Landroid/view/ViewDebug;->dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    .line 818
    .end local v2    # "group":Landroid/view/ViewGroup;
    :cond_0
    const-string v2, "DONE."

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 819
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 823
    .end local v1    # "view":Landroid/view/View;
    nop

    .line 824
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    goto :goto_1

    .line 823
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 820
    :catch_0
    move-exception v1

    .line 821
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "View"

    const-string v3, "Problem dumping the view:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 823
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    goto :goto_0

    .line 827
    :cond_1
    :goto_1
    return-void

    .line 823
    :goto_2
    if-eqz v0, :cond_2

    .line 824
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    :cond_2
    throw v1
.end method

.method public static dumpCapturedView(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "view"    # Ljava/lang/Object;

    .line 1673
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1674
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1675
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, ""

    invoke-static {p1, v0, v2}, Landroid/view/ViewDebug;->capturedViewExportFields(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1676
    const-string v2, ""

    invoke-static {p1, v0, v2}, Landroid/view/ViewDebug;->capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1677
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    return-void
.end method

.method public static dumpTheme(Landroid/view/View;Ljava/io/OutputStream;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 858
    const/4 v0, 0x0

    .line 860
    .local v0, "out":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string/jumbo v3, "utf-8"

    invoke-direct {v2, p1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const v3, 0x8000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    move-object v0, v1

    .line 861
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 862
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 861
    invoke-static {v1, v2}, Landroid/view/ViewDebug;->getStyleAttributesDump(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)[Ljava/lang/String;

    move-result-object v1

    .line 863
    .local v1, "attributes":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 864
    const/4 v2, 0x0

    .line 864
    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 865
    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    .line 866
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 867
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v2, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 864
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 871
    .end local v2    # "i":I
    :cond_1
    const-string v2, "DONE."

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 872
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 876
    .end local v1    # "attributes":[Ljava/lang/String;
    nop

    .line 877
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    goto :goto_2

    .line 876
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 873
    :catch_0
    move-exception v1

    .line 874
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "View"

    const-string v3, "Problem dumping View Theme:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 876
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_2

    goto :goto_1

    .line 880
    :cond_2
    :goto_2
    return-void

    .line 876
    :goto_3
    if-eqz v0, :cond_3

    .line 877
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    :cond_3
    throw v1
.end method

.method private static dumpView(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;IZ)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I
    .param p4, "includeProperties"    # Z

    .line 997
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x20

    if-ge v1, p3, :cond_0

    .line 998
    :try_start_0
    invoke-virtual {p2, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 997
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1012
    .end local v1    # "i":I
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1000
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1001
    .local v1, "className":Ljava/lang/String;
    const-string v3, "android.view.ViewOverlay$OverlayViewGroup"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1002
    const-string v3, "ViewOverlay"

    move-object v1, v3

    .line 1004
    :cond_1
    invoke-virtual {p2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1005
    const/16 v3, 0x40

    invoke-virtual {p2, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 1006
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1007
    invoke-virtual {p2, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 1008
    if-eqz p4, :cond_2

    .line 1009
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V

    .line 1011
    :cond_2
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1015
    .end local v1    # "className":Ljava/lang/String;
    nop

    .line 1016
    const/4 v0, 0x1

    return v0

    .line 1012
    :goto_1
    nop

    .line 1013
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "View"

    const-string v3, "Error while dumping hierarchy tree"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    return v0
.end method

.method private static dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I
    .param p4, "skipChildren"    # Z
    .param p5, "includeProperties"    # Z

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    .line 964
    move/from16 v10, p5

    invoke-static {v6, v7, v8, v9, v10}, Landroid/view/ViewDebug;->dumpView(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 965
    return-void

    .line 968
    :cond_0
    if-eqz p4, :cond_1

    .line 969
    return-void

    .line 972
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    .line 973
    .local v11, "count":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move v12, v0

    .end local v0    # "i":I
    .local v12, "i":I
    if-ge v12, v11, :cond_4

    .line 974
    invoke-virtual {v7, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 975
    .local v13, "view":Landroid/view/View;
    instance-of v0, v13, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 976
    move-object v1, v13

    check-cast v1, Landroid/view/ViewGroup;

    add-int/lit8 v3, v9, 0x1

    move-object v0, v6

    move-object v2, v8

    move/from16 v4, p4

    move v5, v10

    invoke-static/range {v0 .. v5}, Landroid/view/ViewDebug;->dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    goto :goto_1

    .line 979
    :cond_2
    add-int/lit8 v0, v9, 0x1

    invoke-static {v6, v13, v8, v0, v10}, Landroid/view/ViewDebug;->dumpView(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;IZ)Z

    .line 981
    :goto_1
    iget-object v0, v13, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v0, :cond_3

    .line 982
    invoke-virtual {v13}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v14

    .line 983
    .local v14, "overlay":Landroid/view/ViewOverlay;
    iget-object v5, v14, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    .line 984
    .local v5, "overlayContainer":Landroid/view/ViewGroup;
    add-int/lit8 v3, v9, 0x2

    move-object v0, v6

    move-object v1, v5

    move-object v2, v8

    move/from16 v4, p4

    move-object v15, v5

    move v5, v10

    .end local v5    # "overlayContainer":Landroid/view/ViewGroup;
    .local v15, "overlayContainer":Landroid/view/ViewGroup;
    invoke-static/range {v0 .. v5}, Landroid/view/ViewDebug;->dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    .line 973
    .end local v13    # "view":Landroid/view/View;
    .end local v14    # "overlay":Landroid/view/ViewOverlay;
    .end local v15    # "overlayContainer":Landroid/view/ViewGroup;
    :cond_3
    add-int/lit8 v0, v12, 0x1

    .end local v12    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 988
    .end local v0    # "i":I
    :cond_4
    instance-of v0, v7, Landroid/view/ViewDebug$HierarchyHandler;

    if-eqz v0, :cond_5

    .line 989
    move-object v0, v7

    check-cast v0, Landroid/view/ViewDebug$HierarchyHandler;

    add-int/lit8 v1, v9, 0x1

    invoke-interface {v0, v8, v1}, Landroid/view/ViewDebug$HierarchyHandler;->dumpViewHierarchyWithProperties(Ljava/io/BufferedWriter;I)V

    .line 991
    :cond_5
    return-void
.end method

.method private static dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1099
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V

    .line 1100
    return-void
.end method

.method private static dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1105
    if-nez p1, :cond_0

    .line 1106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=4,null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1107
    return-void

    .line 1110
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1112
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-static {p0, p1, p2, v0, p3}, Landroid/view/ViewDebug;->exportFields(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1113
    invoke-static {p0, p1, p2, v0, p3}, Landroid/view/ViewDebug;->exportMethods(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1114
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 1115
    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 1116
    return-void
.end method

.method public static dumpv2(Landroid/view/View;Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "out"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 836
    new-instance v0, Landroid/view/ViewHierarchyEncoder;

    invoke-direct {v0, p1}, Landroid/view/ViewHierarchyEncoder;-><init>(Ljava/io/ByteArrayOutputStream;)V

    .line 837
    .local v0, "encoder":Landroid/view/ViewHierarchyEncoder;
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 839
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Landroid/view/ViewDebug$3;

    invoke-direct {v2, v0, p0, v1}, Landroid/view/ViewDebug$3;-><init>(Landroid/view/ViewHierarchyEncoder;Landroid/view/View;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 849
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 850
    invoke-virtual {v0}, Landroid/view/ViewHierarchyEncoder;->endStream()V

    .line 851
    return-void
.end method

.method private static exportFields(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p4, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/io/BufferedWriter;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1250
    .local p3, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 1250
    move-object/from16 v10, p4

    invoke-static/range {p3 .. p3}, Landroid/view/ViewDebug;->getExportedPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v11

    .line 1252
    .local v11, "fields":[Ljava/lang/reflect/Field;
    array-length v12, v11

    .line 1253
    .local v12, "count":I
    const/4 v0, 0x0

    .line 1253
    .local v0, "i":I
    :goto_0
    move v14, v0

    .line 1253
    .end local v0    # "i":I
    .local v14, "i":I
    if-ge v14, v12, :cond_12

    .line 1254
    aget-object v0, v11, v14

    move-object v15, v0

    .line 1258
    .local v15, "field":Ljava/lang/reflect/Field;
    const/4 v0, 0x0

    .line 1259
    .local v0, "fieldValue":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    move-object v6, v1

    .line 1260
    .local v6, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewDebug$ExportedProperty;

    move-object v3, v1

    .line 1262
    .local v3, "property":Landroid/view/ViewDebug$ExportedProperty;
    invoke-interface {v3}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1336
    .end local v0    # "fieldValue":Ljava/lang/Object;
    .end local v3    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v6    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    move-object/from16 v19, v11

    goto/16 :goto_a

    .line 1262
    .restart local v0    # "fieldValue":Ljava/lang/Object;
    .restart local v3    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v6    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_2
    const-string v1, ""

    :goto_1
    move-object v2, v1

    .line 1264
    .local v2, "categoryPrefix":Ljava/lang/String;
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v5, 0x5f

    if-eq v6, v1, :cond_8

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v6, v1, :cond_1

    .line 1265
    move-object/from16 v17, v0

    move-object v0, v2

    move-object v2, v3

    move-object/from16 v19, v11

    move-object v11, v6

    goto/16 :goto_4

    .line 1303
    :cond_1
    const-class v1, [I

    if-ne v6, v1, :cond_2

    .line 1304
    invoke-virtual {v15, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [I

    .line 1305
    .local v4, "array":[I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1306
    .local v5, "valuePrefix":Ljava/lang/String;
    const-string v1, ""

    move-object v13, v1

    .line 1308
    .local v13, "suffix":Ljava/lang/String;
    const-string v16, ""
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v7

    move-object/from16 v17, v0

    move-object v0, v2

    move-object v2, v9

    .line 1308
    .end local v2    # "categoryPrefix":Ljava/lang/String;
    .local v0, "categoryPrefix":Ljava/lang/String;
    .local v17, "fieldValue":Ljava/lang/Object;
    move-object/from16 v18, v3

    .line 1308
    .end local v3    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .local v18, "property":Landroid/view/ViewDebug$ExportedProperty;
    move-object/from16 v19, v11

    move-object v11, v6

    move-object/from16 v6, v16

    .line 1308
    .end local v6    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v11, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v19, "fields":[Ljava/lang/reflect/Field;
    :try_start_3
    invoke-static/range {v1 .. v6}, Landroid/view/ViewDebug;->exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V

    .line 1310
    goto/16 :goto_a

    .line 1311
    .end local v4    # "array":[I
    .end local v5    # "valuePrefix":Ljava/lang/String;
    .end local v13    # "suffix":Ljava/lang/String;
    .end local v17    # "fieldValue":Ljava/lang/Object;
    .end local v18    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v19    # "fields":[Ljava/lang/reflect/Field;
    .local v0, "fieldValue":Ljava/lang/Object;
    .restart local v2    # "categoryPrefix":Ljava/lang/String;
    .restart local v3    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v6    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v11, "fields":[Ljava/lang/reflect/Field;
    :cond_2
    move-object/from16 v17, v0

    move-object v0, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v11

    move-object v11, v6

    .line 1311
    .end local v2    # "categoryPrefix":Ljava/lang/String;
    .end local v3    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v6    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v0, "categoryPrefix":Ljava/lang/String;
    .local v11, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v17    # "fieldValue":Ljava/lang/Object;
    .restart local v18    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v19    # "fields":[Ljava/lang/reflect/Field;
    const-class v1, [Ljava/lang/String;

    if-ne v11, v1, :cond_6

    .line 1312
    invoke-virtual {v15, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 1313
    .local v1, "array":[Ljava/lang/String;
    move-object/from16 v2, v18

    invoke-interface {v2}, Landroid/view/ViewDebug$ExportedProperty;->hasAdjacentMapping()Z

    move-result v3

    .line 1313
    .end local v18    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .local v2, "property":Landroid/view/ViewDebug$ExportedProperty;
    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    .line 1314
    const/4 v3, 0x0

    .line 1314
    .local v3, "j":I
    :goto_2
    array-length v4, v1

    if-ge v3, v4, :cond_5

    .line 1315
    aget-object v4, v1, v3

    if-eqz v4, :cond_4

    .line 1316
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v1, v3

    const-string v6, ""

    .line 1317
    add-int/lit8 v13, v3, 0x1

    aget-object v13, v1, v13

    if-nez v13, :cond_3

    const-string/jumbo v13, "null"

    goto :goto_3

    :cond_3
    add-int/lit8 v13, v3, 0x1

    aget-object v13, v1, v13

    .line 1316
    :goto_3
    invoke-static {v9, v4, v5, v6, v13}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1314
    :cond_4
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 1322
    .end local v3    # "j":I
    :cond_5
    goto/16 :goto_a

    .line 1323
    .end local v1    # "array":[Ljava/lang/String;
    .end local v2    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v18    # "property":Landroid/view/ViewDebug$ExportedProperty;
    :cond_6
    move-object/from16 v2, v18

    .line 1323
    .end local v18    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v2    # "property":Landroid/view/ViewDebug$ExportedProperty;
    invoke-virtual {v11}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1324
    invoke-interface {v2}, Landroid/view/ViewDebug$ExportedProperty;->deepExport()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1325
    invoke-virtual {v15, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    invoke-interface {v2}, Landroid/view/ViewDebug$ExportedProperty;->prefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1325
    invoke-static {v7, v1, v9, v3}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V

    .line 1327
    goto/16 :goto_a

    .line 1331
    :cond_7
    move-object/from16 v1, v17

    goto/16 :goto_9

    .line 1265
    .end local v17    # "fieldValue":Ljava/lang/Object;
    .end local v19    # "fields":[Ljava/lang/reflect/Field;
    .local v0, "fieldValue":Ljava/lang/Object;
    .local v2, "categoryPrefix":Ljava/lang/String;
    .local v3, "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v6    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v11, "fields":[Ljava/lang/reflect/Field;
    :cond_8
    move-object/from16 v17, v0

    move-object v0, v2

    move-object v2, v3

    move-object/from16 v19, v11

    move-object v11, v6

    .line 1265
    .end local v3    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v6    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v0, "categoryPrefix":Ljava/lang/String;
    .local v2, "property":Landroid/view/ViewDebug$ExportedProperty;
    .local v11, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v17    # "fieldValue":Ljava/lang/Object;
    .restart local v19    # "fields":[Ljava/lang/reflect/Field;
    :goto_4
    invoke-interface {v2}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v7, :cond_9

    .line 1266
    invoke-virtual {v15, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 1267
    .local v1, "id":I
    invoke-static {v7, v1}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 1268
    .end local v17    # "fieldValue":Ljava/lang/Object;
    .local v1, "fieldValue":Ljava/lang/Object;
    goto/16 :goto_9

    .line 1269
    .end local v1    # "fieldValue":Ljava/lang/Object;
    .restart local v17    # "fieldValue":Ljava/lang/Object;
    :cond_9
    invoke-interface {v2}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    move-result-object v1

    .line 1270
    .local v1, "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    array-length v3, v1

    if-lez v3, :cond_a

    .line 1271
    invoke-virtual {v15, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 1272
    .local v3, "intValue":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1273
    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1274
    .local v4, "valuePrefix":Ljava/lang/String;
    invoke-static {v9, v1, v3, v4}, Landroid/view/ViewDebug;->exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V

    .line 1277
    .end local v3    # "intValue":I
    .end local v4    # "valuePrefix":Ljava/lang/String;
    :cond_a
    invoke-interface {v2}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v3

    .line 1278
    .local v3, "mapping":[Landroid/view/ViewDebug$IntToString;
    array-length v4, v3

    if-lez v4, :cond_d

    .line 1279
    invoke-virtual {v15, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 1280
    .local v4, "intValue":I
    array-length v5, v3

    .line 1281
    .local v5, "mappingCount":I
    const/4 v6, 0x0

    .line 1281
    .local v6, "j":I
    :goto_5
    if-ge v6, v5, :cond_c

    .line 1282
    aget-object v13, v3, v6

    .line 1283
    .local v13, "mapped":Landroid/view/ViewDebug$IntToString;
    move-object/from16 v20, v1

    invoke-interface {v13}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v1

    .line 1283
    .end local v1    # "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    .local v20, "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    if-ne v1, v4, :cond_b

    .line 1284
    invoke-interface {v13}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v1

    .line 1285
    .end local v17    # "fieldValue":Ljava/lang/Object;
    .local v1, "fieldValue":Ljava/lang/Object;
    goto :goto_6

    .line 1281
    .end local v1    # "fieldValue":Ljava/lang/Object;
    .end local v13    # "mapped":Landroid/view/ViewDebug$IntToString;
    .restart local v17    # "fieldValue":Ljava/lang/Object;
    :cond_b
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v20

    goto :goto_5

    .line 1289
    .end local v6    # "j":I
    .end local v20    # "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    .local v1, "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    :cond_c
    move-object/from16 v20, v1

    move-object/from16 v1, v17

    .line 1289
    .end local v17    # "fieldValue":Ljava/lang/Object;
    .local v1, "fieldValue":Ljava/lang/Object;
    .restart local v20    # "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    :goto_6
    if-nez v1, :cond_e

    .line 1290
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v6

    .line 1290
    .end local v4    # "intValue":I
    .end local v5    # "mappingCount":I
    goto :goto_7

    .line 1294
    .end local v20    # "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    .local v1, "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    .restart local v17    # "fieldValue":Ljava/lang/Object;
    :cond_d
    move-object/from16 v20, v1

    move-object/from16 v1, v17

    .line 1294
    .end local v17    # "fieldValue":Ljava/lang/Object;
    .local v1, "fieldValue":Ljava/lang/Object;
    .restart local v20    # "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    :cond_e
    :goto_7
    invoke-interface {v2}, Landroid/view/ViewDebug$ExportedProperty;->formatToHexString()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1295
    invoke-virtual {v15, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 1296
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v11, v4, :cond_f

    .line 1297
    move-object v4, v1

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/view/ViewDebug;->formatIntToHexString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_8

    .line 1298
    :cond_f
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v11, v4, :cond_10

    .line 1299
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, v1

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Byte;->toHexString(BZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 1302
    .end local v3    # "mapping":[Landroid/view/ViewDebug$IntToString;
    .end local v20    # "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    :cond_10
    :goto_8
    nop

    .line 1331
    :goto_9
    if-nez v1, :cond_11

    .line 1332
    invoke-virtual {v15, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 1335
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v9, v3, v4, v5, v1}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1337
    .end local v0    # "categoryPrefix":Ljava/lang/String;
    .end local v1    # "fieldValue":Ljava/lang/Object;
    .end local v2    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v11    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_a

    .line 1336
    :catch_1
    move-exception v0

    goto :goto_a

    .line 1336
    .end local v19    # "fields":[Ljava/lang/reflect/Field;
    .local v11, "fields":[Ljava/lang/reflect/Field;
    :catch_2
    move-exception v0

    move-object/from16 v19, v11

    .line 1253
    .end local v11    # "fields":[Ljava/lang/reflect/Field;
    .end local v15    # "field":Ljava/lang/reflect/Field;
    .restart local v19    # "fields":[Ljava/lang/reflect/Field;
    :goto_a
    add-int/lit8 v0, v14, 0x1

    .line 1253
    .end local v14    # "i":I
    .local v0, "i":I
    move-object/from16 v11, v19

    goto/16 :goto_0

    .line 1339
    .end local v0    # "i":I
    .end local v19    # "fields":[Ljava/lang/reflect/Field;
    .restart local v11    # "fields":[Ljava/lang/reflect/Field;
    :cond_12
    move-object/from16 v19, v11

    .line 1339
    .end local v11    # "fields":[Ljava/lang/reflect/Field;
    .restart local v19    # "fields":[Ljava/lang/reflect/Field;
    return-void
.end method

.method private static exportMethods(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p4, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/io/BufferedWriter;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1167
    .local p3, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    .line 1167
    move-object/from16 v9, p4

    invoke-static/range {p3 .. p3}, Landroid/view/ViewDebug;->getExportedPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v10

    .line 1168
    .local v10, "methods":[Ljava/lang/reflect/Method;
    array-length v11, v10

    .line 1169
    .local v11, "count":I
    const/4 v0, 0x0

    .line 1169
    .local v0, "i":I
    :goto_0
    move v13, v0

    .line 1169
    .end local v0    # "i":I
    .local v13, "i":I
    if-ge v13, v11, :cond_e

    .line 1170
    aget-object v0, v10, v13

    move-object v14, v0

    .line 1173
    .local v14, "method":Ljava/lang/reflect/Method;
    move-object/from16 v15, p1

    :try_start_0
    invoke-static {v14, v15}, Landroid/view/ViewDebug;->callMethodOnAppropriateTheadBlocking(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1174
    .local v0, "methodValue":Ljava/lang/Object;
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    move-object v6, v1

    .line 1175
    .local v6, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewDebug$ExportedProperty;

    move-object v3, v1

    .line 1177
    .local v3, "property":Landroid/view/ViewDebug$ExportedProperty;
    invoke-interface {v3}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_6

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1242
    .end local v0    # "methodValue":Ljava/lang/Object;
    .end local v3    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v6    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    move-object/from16 v24, v10

    move/from16 v25, v11

    goto/16 :goto_8

    .line 1241
    :catch_1
    move-exception v0

    move-object/from16 v24, v10

    move/from16 v25, v11

    goto/16 :goto_9

    .line 1240
    :catch_2
    move-exception v0

    move-object/from16 v24, v10

    move/from16 v25, v11

    goto/16 :goto_a

    .line 1177
    .restart local v0    # "methodValue":Ljava/lang/Object;
    .restart local v3    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v6    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_2
    const-string v1, ""

    :goto_1
    move-object v2, v1

    .line 1179
    .local v2, "categoryPrefix":Ljava/lang/String;
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_6

    if-ne v6, v1, :cond_7

    .line 1180
    :try_start_3
    invoke-interface {v3}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v7, :cond_1

    .line 1181
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1182
    .local v1, "id":I
    invoke-static {v7, v1}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .line 1183
    .end local v1    # "id":I
    nop

    .line 1239
    move-object/from16 v24, v10

    move/from16 v25, v11

    move-object v10, v2

    move-object v2, v3

    move-object v11, v6

    goto/16 :goto_7

    .line 1184
    :cond_1
    invoke-interface {v3}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    move-result-object v1

    .line 1185
    .local v1, "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    array-length v4, v1

    if-lez v4, :cond_2

    .line 1186
    move-object v4, v0

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1187
    .local v4, "intValue":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x5f

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1189
    .local v5, "valuePrefix":Ljava/lang/String;
    invoke-static {v8, v1, v4, v5}, Landroid/view/ViewDebug;->exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V

    .line 1192
    .end local v4    # "intValue":I
    .end local v5    # "valuePrefix":Ljava/lang/String;
    :cond_2
    invoke-interface {v3}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v4

    .line 1193
    .local v4, "mapping":[Landroid/view/ViewDebug$IntToString;
    array-length v5, v4

    if-lez v5, :cond_5

    .line 1194
    move-object v5, v0

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1195
    .local v5, "intValue":I
    const/4 v12, 0x0

    .line 1196
    .local v12, "mapped":Z
    move-object/from16 v17, v1

    array-length v1, v4

    .line 1197
    .local v1, "mappingCount":I
    .local v17, "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    const/16 v16, 0x0

    .line 1197
    .local v16, "j":I
    :goto_2
    move/from16 v18, v16

    .line 1197
    .end local v16    # "j":I
    .local v18, "j":I
    move-object/from16 v19, v3

    move/from16 v3, v18

    if-ge v3, v1, :cond_4

    .line 1198
    .end local v18    # "j":I
    .local v3, "j":I
    .local v19, "property":Landroid/view/ViewDebug$ExportedProperty;
    aget-object v16, v4, v3

    move-object/from16 v20, v16

    .line 1199
    .local v20, "mapper":Landroid/view/ViewDebug$IntToString;
    move/from16 v21, v1

    move-object/from16 v22, v4

    move-object/from16 v1, v20

    invoke-interface {v1}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v4

    .line 1199
    .end local v4    # "mapping":[Landroid/view/ViewDebug$IntToString;
    .end local v20    # "mapper":Landroid/view/ViewDebug$IntToString;
    .local v1, "mapper":Landroid/view/ViewDebug$IntToString;
    .local v21, "mappingCount":I
    .local v22, "mapping":[Landroid/view/ViewDebug$IntToString;
    if-ne v4, v5, :cond_3

    .line 1200
    invoke-interface {v1}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 1201
    const/4 v12, 0x1

    .line 1202
    goto :goto_3

    .line 1197
    .end local v1    # "mapper":Landroid/view/ViewDebug$IntToString;
    :cond_3
    add-int/lit8 v16, v3, 0x1

    .line 1197
    .end local v3    # "j":I
    .restart local v16    # "j":I
    move-object/from16 v3, v19

    move/from16 v1, v21

    move-object/from16 v4, v22

    goto :goto_2

    .line 1206
    .end local v16    # "j":I
    .end local v21    # "mappingCount":I
    .end local v22    # "mapping":[Landroid/view/ViewDebug$IntToString;
    .local v1, "mappingCount":I
    .restart local v4    # "mapping":[Landroid/view/ViewDebug$IntToString;
    :cond_4
    move/from16 v21, v1

    move-object/from16 v22, v4

    .line 1206
    .end local v1    # "mappingCount":I
    .end local v4    # "mapping":[Landroid/view/ViewDebug$IntToString;
    .restart local v21    # "mappingCount":I
    .restart local v22    # "mapping":[Landroid/view/ViewDebug$IntToString;
    :goto_3
    if-nez v12, :cond_6

    .line 1207
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v1

    .line 1207
    .end local v5    # "intValue":I
    .end local v12    # "mapped":Z
    .end local v17    # "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    .end local v21    # "mappingCount":I
    .end local v22    # "mapping":[Landroid/view/ViewDebug$IntToString;
    goto :goto_4

    .line 1210
    .end local v19    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .local v3, "property":Landroid/view/ViewDebug$ExportedProperty;
    :cond_5
    move-object/from16 v19, v3

    .line 1239
    .end local v3    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v19    # "property":Landroid/view/ViewDebug$ExportedProperty;
    :cond_6
    :goto_4
    move-object/from16 v24, v10

    move/from16 v25, v11

    move-object v10, v2

    move-object v11, v6

    move-object/from16 v2, v19

    goto/16 :goto_7

    .line 1211
    .end local v19    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v3    # "property":Landroid/view/ViewDebug$ExportedProperty;
    :cond_7
    move-object/from16 v19, v3

    .line 1211
    .end local v3    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v19    # "property":Landroid/view/ViewDebug$ExportedProperty;
    :try_start_4
    const-class v1, [I

    if-ne v6, v1, :cond_8

    .line 1212
    move-object v4, v0

    check-cast v4, [I

    .line 1213
    .local v4, "array":[I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1214
    .local v5, "valuePrefix":Ljava/lang/String;
    const-string v1, "()"

    move-object v12, v1

    .line 1216
    .local v12, "suffix":Ljava/lang/String;
    const-string v16, "()"
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v1, v7

    move-object v3, v2

    move-object v2, v8

    .line 1216
    .end local v2    # "categoryPrefix":Ljava/lang/String;
    .local v3, "categoryPrefix":Ljava/lang/String;
    move-object/from16 v24, v10

    move-object/from16 v23, v19

    move-object v10, v3

    move-object/from16 v3, v23

    .line 1216
    .end local v3    # "categoryPrefix":Ljava/lang/String;
    .end local v19    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .local v10, "categoryPrefix":Ljava/lang/String;
    .local v23, "property":Landroid/view/ViewDebug$ExportedProperty;
    .local v24, "methods":[Ljava/lang/reflect/Method;
    move/from16 v25, v11

    move-object v11, v6

    move-object/from16 v6, v16

    .line 1216
    .end local v6    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v11, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v25, "count":I
    :try_start_5
    invoke-static/range {v1 .. v6}, Landroid/view/ViewDebug;->exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V

    .line 1218
    goto/16 :goto_b

    .line 1219
    .end local v4    # "array":[I
    .end local v5    # "valuePrefix":Ljava/lang/String;
    .end local v12    # "suffix":Ljava/lang/String;
    .end local v23    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v24    # "methods":[Ljava/lang/reflect/Method;
    .end local v25    # "count":I
    .restart local v2    # "categoryPrefix":Ljava/lang/String;
    .restart local v6    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v10, "methods":[Ljava/lang/reflect/Method;
    .local v11, "count":I
    .restart local v19    # "property":Landroid/view/ViewDebug$ExportedProperty;
    :cond_8
    move-object/from16 v24, v10

    move/from16 v25, v11

    move-object/from16 v23, v19

    move-object v10, v2

    move-object v11, v6

    .line 1219
    .end local v2    # "categoryPrefix":Ljava/lang/String;
    .end local v6    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v19    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .local v10, "categoryPrefix":Ljava/lang/String;
    .local v11, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v23    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v24    # "methods":[Ljava/lang/reflect/Method;
    .restart local v25    # "count":I
    const-class v1, [Ljava/lang/String;

    if-ne v11, v1, :cond_c

    .line 1220
    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    .line 1221
    .local v1, "array":[Ljava/lang/String;
    move-object/from16 v2, v23

    invoke-interface {v2}, Landroid/view/ViewDebug$ExportedProperty;->hasAdjacentMapping()Z

    move-result v3

    .line 1221
    .end local v23    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .local v2, "property":Landroid/view/ViewDebug$ExportedProperty;
    if-eqz v3, :cond_b

    if-eqz v1, :cond_b

    .line 1222
    const/4 v3, 0x0

    .line 1222
    .local v3, "j":I
    :goto_5
    array-length v4, v1

    if-ge v3, v4, :cond_b

    .line 1223
    aget-object v4, v1, v3

    if-eqz v4, :cond_a

    .line 1224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v1, v3

    const-string v6, "()"

    .line 1225
    add-int/lit8 v12, v3, 0x1

    aget-object v12, v1, v12

    if-nez v12, :cond_9

    const-string/jumbo v12, "null"

    goto :goto_6

    :cond_9
    add-int/lit8 v12, v3, 0x1

    aget-object v12, v1, v12

    .line 1224
    :goto_6
    invoke-static {v8, v4, v5, v6, v12}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1222
    :cond_a
    add-int/lit8 v3, v3, 0x2

    goto :goto_5

    .line 1231
    .end local v3    # "j":I
    :cond_b
    goto :goto_b

    .line 1232
    .end local v1    # "array":[Ljava/lang/String;
    .end local v2    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v23    # "property":Landroid/view/ViewDebug$ExportedProperty;
    :cond_c
    move-object/from16 v2, v23

    .line 1232
    .end local v23    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v2    # "property":Landroid/view/ViewDebug$ExportedProperty;
    invoke-virtual {v11}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_d

    .line 1233
    invoke-interface {v2}, Landroid/view/ViewDebug$ExportedProperty;->deepExport()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/view/ViewDebug$ExportedProperty;->prefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v0, v8, v1}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V

    .line 1235
    goto :goto_b

    .line 1239
    :cond_d
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "()"

    invoke-static {v8, v1, v3, v4, v0}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_5} :catch_3

    .end local v0    # "methodValue":Ljava/lang/Object;
    .end local v2    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v10    # "categoryPrefix":Ljava/lang/String;
    .end local v11    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_a

    .line 1242
    :catch_3
    move-exception v0

    goto :goto_8

    .line 1241
    :catch_4
    move-exception v0

    goto :goto_9

    .line 1240
    :catch_5
    move-exception v0

    goto :goto_a

    .line 1242
    .end local v24    # "methods":[Ljava/lang/reflect/Method;
    .end local v25    # "count":I
    .local v10, "methods":[Ljava/lang/reflect/Method;
    .local v11, "count":I
    :catch_6
    move-exception v0

    move-object/from16 v24, v10

    move/from16 v25, v11

    .line 1242
    .end local v10    # "methods":[Ljava/lang/reflect/Method;
    .end local v11    # "count":I
    .end local v14    # "method":Ljava/lang/reflect/Method;
    .restart local v24    # "methods":[Ljava/lang/reflect/Method;
    .restart local v25    # "count":I
    :goto_8
    goto :goto_b

    .line 1241
    .end local v24    # "methods":[Ljava/lang/reflect/Method;
    .end local v25    # "count":I
    .restart local v10    # "methods":[Ljava/lang/reflect/Method;
    .restart local v11    # "count":I
    .restart local v14    # "method":Ljava/lang/reflect/Method;
    :catch_7
    move-exception v0

    move-object/from16 v24, v10

    move/from16 v25, v11

    .line 1241
    .end local v10    # "methods":[Ljava/lang/reflect/Method;
    .end local v11    # "count":I
    .restart local v24    # "methods":[Ljava/lang/reflect/Method;
    .restart local v25    # "count":I
    :goto_9
    goto :goto_a

    .line 1240
    .end local v24    # "methods":[Ljava/lang/reflect/Method;
    .end local v25    # "count":I
    .restart local v10    # "methods":[Ljava/lang/reflect/Method;
    .restart local v11    # "count":I
    :catch_8
    move-exception v0

    move-object/from16 v24, v10

    move/from16 v25, v11

    .line 1243
    .end local v10    # "methods":[Ljava/lang/reflect/Method;
    .end local v11    # "count":I
    .end local v14    # "method":Ljava/lang/reflect/Method;
    .restart local v24    # "methods":[Ljava/lang/reflect/Method;
    .restart local v25    # "count":I
    :goto_a
    nop

    .line 1169
    :goto_b
    add-int/lit8 v0, v13, 0x1

    .line 1169
    .end local v13    # "i":I
    .local v0, "i":I
    move-object/from16 v10, v24

    move/from16 v11, v25

    goto/16 :goto_0

    .line 1245
    .end local v0    # "i":I
    .end local v24    # "methods":[Ljava/lang/reflect/Method;
    .end local v25    # "count":I
    .restart local v10    # "methods":[Ljava/lang/reflect/Method;
    .restart local v11    # "count":I
    :cond_e
    move-object/from16 v15, p1

    move-object/from16 v24, v10

    move/from16 v25, v11

    .line 1245
    .end local v10    # "methods":[Ljava/lang/reflect/Method;
    .end local v11    # "count":I
    .restart local v24    # "methods":[Ljava/lang/reflect/Method;
    .restart local v25    # "count":I
    return-void
.end method

.method private static exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .param p2, "property"    # Landroid/view/ViewDebug$ExportedProperty;
    .param p3, "array"    # [I
    .param p4, "prefix"    # Ljava/lang/String;
    .param p5, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 1448
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->indexMapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v2

    .line 1449
    .local v2, "indexMapping":[Landroid/view/ViewDebug$IntToString;
    array-length v3, v2

    const/4 v5, 0x1

    if-lez v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1451
    .local v3, "hasIndexMapping":Z
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v6

    .line 1452
    .local v6, "mapping":[Landroid/view/ViewDebug$IntToString;
    array-length v7, v6

    if-lez v7, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 1454
    .local v7, "hasMapping":Z
    :goto_1
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 1455
    .local v5, "resolveId":Z
    :goto_2
    array-length v8, v1

    .line 1457
    .local v8, "valuesCount":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3
    if-ge v9, v8, :cond_9

    .line 1459
    const/4 v10, 0x0

    .line 1461
    .local v10, "value":Ljava/lang/String;
    aget v11, v1, v9

    .line 1463
    .local v11, "intValue":I
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 1464
    .local v12, "name":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 1465
    array-length v13, v2

    .line 1466
    .local v13, "mappingCount":I
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_4
    if-ge v14, v13, :cond_4

    .line 1467
    aget-object v15, v2, v14

    .line 1468
    .local v15, "mapped":Landroid/view/ViewDebug$IntToString;
    invoke-interface {v15}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v4

    if-ne v4, v9, :cond_3

    .line 1469
    invoke-interface {v15}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v12

    .line 1470
    goto :goto_5

    .line 1466
    .end local v15    # "mapped":Landroid/view/ViewDebug$IntToString;
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 1475
    .end local v13    # "mappingCount":I
    .end local v14    # "k":I
    :cond_4
    :goto_5
    if-eqz v7, :cond_6

    .line 1476
    array-length v4, v6

    .line 1477
    .local v4, "mappingCount":I
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_6
    if-ge v13, v4, :cond_6

    .line 1478
    aget-object v14, v6, v13

    .line 1479
    .local v14, "mapped":Landroid/view/ViewDebug$IntToString;
    invoke-interface {v14}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v15

    if-ne v15, v11, :cond_5

    .line 1480
    invoke-interface {v14}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v10

    .line 1481
    goto :goto_7

    .line 1477
    .end local v14    # "mapped":Landroid/view/ViewDebug$IntToString;
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 1486
    .end local v4    # "mappingCount":I
    .end local v13    # "k":I
    :cond_6
    :goto_7
    if-eqz v5, :cond_7

    .line 1487
    if-nez v10, :cond_8

    invoke-static {v0, v11}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/lang/String;

    goto :goto_8

    .line 1489
    :cond_7
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 1492
    :cond_8
    :goto_8
    move-object/from16 v4, p1

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-static {v4, v13, v12, v14, v10}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1457
    .end local v10    # "value":Ljava/lang/String;
    .end local v11    # "intValue":I
    .end local v12    # "name":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1494
    .end local v9    # "j":I
    :cond_9
    move-object/from16 v4, p1

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    return-void
.end method

.method private static exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V
    .locals 10
    .param p0, "out"    # Ljava/io/BufferedWriter;
    .param p1, "mapping"    # [Landroid/view/ViewDebug$FlagToString;
    .param p2, "intValue"    # I
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1355
    array-length v0, p1

    .line 1356
    .local v0, "count":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 1357
    aget-object v3, p1, v2

    .line 1358
    .local v3, "flagMapping":Landroid/view/ViewDebug$FlagToString;
    invoke-interface {v3}, Landroid/view/ViewDebug$FlagToString;->outputIf()Z

    move-result v4

    .line 1359
    .local v4, "ifTrue":Z
    invoke-interface {v3}, Landroid/view/ViewDebug$FlagToString;->mask()I

    move-result v5

    and-int/2addr v5, p2

    .line 1360
    .local v5, "maskResult":I
    invoke-interface {v3}, Landroid/view/ViewDebug$FlagToString;->equals()I

    move-result v6

    if-ne v5, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v1

    .line 1361
    .local v6, "test":Z
    :goto_1
    if-eqz v6, :cond_1

    if-nez v4, :cond_2

    :cond_1
    if-nez v6, :cond_3

    if-nez v4, :cond_3

    .line 1362
    :cond_2
    invoke-interface {v3}, Landroid/view/ViewDebug$FlagToString;->name()Ljava/lang/String;

    move-result-object v7

    .line 1363
    .local v7, "name":Ljava/lang/String;
    invoke-static {v5}, Landroid/view/ViewDebug;->formatIntToHexString(I)Ljava/lang/String;

    move-result-object v8

    .line 1364
    .local v8, "value":Ljava/lang/String;
    const-string v9, ""

    invoke-static {p0, p3, v7, v9, v8}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1356
    .end local v3    # "flagMapping":Landroid/view/ViewDebug$FlagToString;
    .end local v4    # "ifTrue":Z
    .end local v5    # "maskResult":I
    .end local v6    # "test":Z
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1367
    .end local v2    # "j":I
    :cond_4
    return-void
.end method

.method public static findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 6
    .param p0, "root"    # Landroid/view/View;
    .param p1, "parameter"    # Ljava/lang/String;

    .line 468
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 469
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, "ids":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    .line 471
    .local v2, "className":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v0, v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    long-to-int v3, v3

    .line 473
    .local v3, "hashCode":I
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 474
    .local v4, "view":Landroid/view/View;
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    .line 475
    move-object v1, v4

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3}, Landroid/view/ViewDebug;->findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 477
    .end local v0    # "ids":[Ljava/lang/String;
    .end local v2    # "className":Ljava/lang/String;
    .end local v3    # "hashCode":I
    .end local v4    # "view":Landroid/view/View;
    :cond_0
    nop

    .line 483
    return-object v1

    .line 479
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 480
    .local v0, "id":I
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private static findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;
    .locals 4
    .param p0, "group"    # Landroid/view/ViewGroup;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "hashCode"    # I

    .line 917
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug;->isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    return-object p0

    .line 921
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 922
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_6

    .line 923
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 924
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 925
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v3, p1, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v3

    .line 926
    .local v3, "found":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 927
    return-object v3

    .line 929
    .end local v3    # "found":Landroid/view/View;
    :cond_1
    goto :goto_1

    :cond_2
    invoke-static {v2, p1, p2}, Landroid/view/ViewDebug;->isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 930
    return-object v2

    .line 932
    :cond_3
    :goto_1
    iget-object v3, v2, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v3, :cond_4

    .line 933
    iget-object v3, v2, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    iget-object v3, v3, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    invoke-static {v3, p1, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v3

    .line 935
    .restart local v3    # "found":Landroid/view/View;
    if-eqz v3, :cond_4

    .line 936
    return-object v3

    .line 939
    .end local v3    # "found":Landroid/view/View;
    :cond_4
    instance-of v3, v2, Landroid/view/ViewDebug$HierarchyHandler;

    if-eqz v3, :cond_5

    .line 940
    move-object v3, v2

    check-cast v3, Landroid/view/ViewDebug$HierarchyHandler;

    .line 941
    invoke-interface {v3, p1, p2}, Landroid/view/ViewDebug$HierarchyHandler;->findHierarchyView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v3

    .line 942
    .restart local v3    # "found":Landroid/view/View;
    if-eqz v3, :cond_5

    .line 943
    return-object v3

    .line 922
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "found":Landroid/view/View;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 947
    .end local v1    # "i":I
    :cond_6
    const/4 v1, 0x0

    return-object v1
.end method

.method public static flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;
    .locals 11
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1405
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->getFlagMapping(Ljava/lang/Class;Ljava/lang/String;)[Landroid/view/ViewDebug$FlagToString;

    move-result-object v0

    .line 1406
    .local v0, "mapping":[Landroid/view/ViewDebug$FlagToString;
    if-nez v0, :cond_0

    .line 1407
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1409
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1410
    .local v1, "result":Ljava/lang/StringBuilder;
    array-length v2, v0

    .line 1411
    .local v2, "count":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "j":I
    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_3

    .line 1412
    aget-object v6, v0, v4

    .line 1413
    .local v6, "flagMapping":Landroid/view/ViewDebug$FlagToString;
    invoke-interface {v6}, Landroid/view/ViewDebug$FlagToString;->outputIf()Z

    move-result v7

    .line 1414
    .local v7, "ifTrue":Z
    invoke-interface {v6}, Landroid/view/ViewDebug$FlagToString;->mask()I

    move-result v8

    and-int/2addr v8, p2

    .line 1415
    .local v8, "maskResult":I
    invoke-interface {v6}, Landroid/view/ViewDebug$FlagToString;->equals()I

    move-result v9

    if-ne v8, v9, :cond_1

    goto :goto_1

    :cond_1
    move v5, v3

    .line 1416
    .local v5, "test":Z
    :goto_1
    if-eqz v5, :cond_2

    if-eqz v7, :cond_2

    .line 1417
    invoke-interface {v6}, Landroid/view/ViewDebug$FlagToString;->name()Ljava/lang/String;

    move-result-object v9

    .line 1418
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x20

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1411
    .end local v5    # "test":Z
    .end local v6    # "flagMapping":Landroid/view/ViewDebug$FlagToString;
    .end local v7    # "ifTrue":Z
    .end local v8    # "maskResult":I
    .end local v9    # "name":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1421
    .end local v4    # "j":I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 1422
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1424
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static formatIntToHexString(I)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # I

    .line 1161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getExportedPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 1020
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Landroid/view/ViewDebug;->sFieldsForClasses:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 1021
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/view/ViewDebug;->sFieldsForClasses:Ljava/util/HashMap;

    .line 1023
    :cond_0
    sget-object v0, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 1024
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    .line 1027
    :cond_1
    sget-object v0, Landroid/view/ViewDebug;->sFieldsForClasses:Ljava/util/HashMap;

    .line 1029
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Field;

    .line 1030
    .local v1, "fields":[Ljava/lang/reflect/Field;
    if-eqz v1, :cond_2

    .line 1031
    return-object v1

    .line 1035
    :cond_2
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredFieldsUnchecked(Z)[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1036
    .local v3, "declaredFields":[Ljava/lang/reflect/Field;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1037
    .local v4, "foundFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    array-length v5, v3

    :goto_0
    if-ge v2, v5, :cond_4

    aget-object v6, v3, v2

    .line 1039
    .local v6, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    if-eqz v7, :cond_3

    const-class v7, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1040
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1041
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1042
    sget-object v7, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    const-class v8, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    .end local v6    # "field":Ljava/lang/reflect/Field;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1045
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/reflect/Field;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Field;

    move-object v1, v2

    .line 1046
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    .end local v3    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v4    # "foundFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    nop

    .line 1051
    return-object v1

    .line 1047
    :catch_0
    move-exception v2

    .line 1048
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method private static getExportedPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1055
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Landroid/view/ViewDebug;->sMethodsForClasses:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 1056
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Landroid/view/ViewDebug;->sMethodsForClasses:Ljava/util/HashMap;

    .line 1058
    :cond_0
    sget-object v0, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 1059
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    .line 1062
    :cond_1
    sget-object v0, Landroid/view/ViewDebug;->sMethodsForClasses:Ljava/util/HashMap;

    .line 1064
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Method;>;"
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Method;

    .line 1065
    .local v1, "methods":[Ljava/lang/reflect/Method;
    if-eqz v1, :cond_2

    .line 1066
    return-object v1

    .line 1069
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredMethodsUnchecked(Z)[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1071
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1072
    .local v3, "foundMethods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    array-length v4, v1

    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v5, v1, v2

    .line 1075
    .local v5, "method":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 1076
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1079
    nop

    .line 1081
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_3

    const-class v6, Landroid/view/ViewDebug$ExportedProperty;

    .line 1082
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1083
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Void;

    if-eq v6, v7, :cond_3

    .line 1084
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1085
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1086
    sget-object v6, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    const-class v7, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v5    # "method":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 1077
    .restart local v5    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v6

    .line 1078
    .local v6, "e":Ljava/lang/NoClassDefFoundError;
    nop

    .line 1072
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "e":Ljava/lang/NoClassDefFoundError;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1090
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/reflect/Method;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, [Ljava/lang/reflect/Method;

    .line 1091
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    return-object v1
.end method

.method private static getFlagMapping(Ljava/lang/Class;Ljava/lang/String;)[Landroid/view/ViewDebug$FlagToString;
    .locals 2
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")[",
            "Landroid/view/ViewDebug$FlagToString;"
        }
    .end annotation

    .line 1429
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v1, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Landroid/view/ViewDebug$ExportedProperty;

    .line 1430
    invoke-interface {v0}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1429
    return-object v0

    .line 1431
    :catch_0
    move-exception v0

    .line 1432
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getMapping(Ljava/lang/Class;Ljava/lang/String;)[Landroid/view/ViewDebug$IntToString;
    .locals 2
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")[",
            "Landroid/view/ViewDebug$IntToString;"
        }
    .end annotation

    .line 1438
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v1, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Landroid/view/ViewDebug$ExportedProperty;

    invoke-interface {v0}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1439
    :catch_0
    move-exception v0

    .line 1440
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getStyleAttributesDump(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)[Ljava/lang/String;
    .locals 11
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    .line 893
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 894
    .local v0, "outValue":Landroid/util/TypedValue;
    const-string/jumbo v1, "null"

    .line 895
    .local v1, "nullString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 896
    .local v2, "i":I
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getAllAttributes()[I

    move-result-object v3

    .line 897
    .local v3, "attributes":[I
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 898
    .local v4, "data":[Ljava/lang/String;
    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget v7, v3, v6

    .line 900
    .local v7, "attributeId":I
    :try_start_0
    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v2

    .line 901
    add-int/lit8 v8, v2, 0x1

    const/4 v9, 0x1

    invoke-virtual {p1, v7, v0, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 902
    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_0
    move-object v10, v1

    :goto_1
    aput-object v10, v4, v8

    .line 903
    add-int/lit8 v2, v2, 0x2

    .line 906
    iget v8, v0, Landroid/util/TypedValue;->type:I

    if-ne v8, v9, :cond_1

    .line 907
    add-int/lit8 v8, v2, -0x1

    iget v9, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v9}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 911
    :cond_1
    goto :goto_2

    .line 909
    :catch_0
    move-exception v8

    .line 898
    .end local v7    # "attributeId":I
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 913
    :cond_2
    return-object v4
.end method

.method public static getViewInstanceCount()J
    .locals 2

    .line 376
    const-class v0, Landroid/view/View;

    invoke-static {v0}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getViewRootImplCount()J
    .locals 2

    .line 387
    const-class v0, Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static intToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "integer"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1380
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->getMapping(Ljava/lang/Class;Ljava/lang/String;)[Landroid/view/ViewDebug$IntToString;

    move-result-object v0

    .line 1381
    .local v0, "mapping":[Landroid/view/ViewDebug$IntToString;
    if-nez v0, :cond_0

    .line 1382
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1384
    :cond_0
    array-length v1, v0

    .line 1385
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1386
    aget-object v3, v0, v2

    .line 1387
    .local v3, "map":Landroid/view/ViewDebug$IntToString;
    invoke-interface {v3}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v4

    if-ne v4, p2, :cond_1

    .line 1388
    invoke-interface {v3}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1385
    .end local v3    # "map":Landroid/view/ViewDebug$IntToString;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1391
    .end local v2    # "j":I
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static invalidate(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p0, "root"    # Landroid/view/View;
    .param p1, "parameter"    # Ljava/lang/String;

    .line 487
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 488
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 491
    :cond_0
    return-void
.end method

.method public static invokeViewMethod(Landroid/view/View;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p0, "view"    # Landroid/view/View;
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 1690
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1691
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1692
    .local v1, "result":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move-object v9, v2

    .line 1694
    .local v9, "exception":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    new-instance v10, Landroid/view/ViewDebug$5;

    move-object v2, v10

    move-object v3, v1

    move-object v4, p1

    move-object v5, p0

    move-object v6, p2

    move-object v7, v9

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Landroid/view/ViewDebug$5;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Method;Landroid/view/View;[Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v10}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1710
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1713
    nop

    .line 1715
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1719
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1716
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1711
    :catch_0
    move-exception v2

    .line 1712
    .local v2, "e":Ljava/lang/InterruptedException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "hashCode"    # I

    .line 951
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 952
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 953
    .local v0, "viewClassName":Ljava/lang/String;
    const-string v1, "ViewOverlay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 954
    const-string v1, "android.view.ViewOverlay$OverlayViewGroup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 956
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 959
    .end local v0    # "viewClassName":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$performViewCapture$4(Landroid/view/View;[Landroid/graphics/Bitmap;ZLjava/util/concurrent/CountDownLatch;)V
    .locals 3
    .param p0, "captureView"    # Landroid/view/View;
    .param p1, "cache"    # [Landroid/graphics/Bitmap;
    .param p2, "skipChildren"    # Z
    .param p3, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 779
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    new-instance v0, Landroid/view/ViewDebug$HardwareCanvasProvider;

    invoke-direct {v0}, Landroid/view/ViewDebug$HardwareCanvasProvider;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/ViewDebug$SoftwareCanvasProvider;

    invoke-direct {v0}, Landroid/view/ViewDebug$SoftwareCanvasProvider;-><init>()V

    .line 781
    .local v0, "provider":Landroid/view/ViewDebug$CanvasProvider;
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2}, Landroid/view/View;->createSnapshot(Landroid/view/ViewDebug$CanvasProvider;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, p1, v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "provider":Landroid/view/ViewDebug$CanvasProvider;
    goto :goto_1

    .line 785
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 782
    :catch_0
    move-exception v0

    .line 783
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    const-string v1, "View"

    const-string v2, "Out of memory for bitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 785
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :goto_1
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 786
    nop

    .line 787
    return-void

    .line 785
    :goto_2
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method static synthetic lambda$profileViewDraw$1(Landroid/view/View;Landroid/view/DisplayListCanvas;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "canvas"    # Landroid/view/DisplayListCanvas;

    .line 603
    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic lambda$profileViewDraw$2(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 612
    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic lambda$profileViewLayout$0(Landroid/view/View;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .line 591
    iget v0, p0, Landroid/view/View;->mLeft:I

    iget v1, p0, Landroid/view/View;->mTop:I

    iget v2, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method static synthetic lambda$profileViewOperation$3(Landroid/view/ViewDebug$ViewOperation;[JLjava/util/concurrent/CountDownLatch;)V
    .locals 5
    .param p0, "operation"    # Landroid/view/ViewDebug$ViewOperation;
    .param p1, "duration"    # [J
    .param p2, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 632
    :try_start_0
    invoke-interface {p0}, Landroid/view/ViewDebug$ViewOperation;->pre()V

    .line 633
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    .line 635
    .local v0, "start":J
    invoke-interface {p0}, Landroid/view/ViewDebug$ViewOperation;->run()V

    .line 636
    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v3

    sub-long/2addr v3, v0

    aput-wide v3, p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    .end local v0    # "start":J
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 639
    nop

    .line 640
    return-void

    .line 638
    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public static outputDisplayList(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p0, "root"    # Landroid/view/View;
    .param p1, "target"    # Landroid/view/View;

    .line 736
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->outputDisplayList(Landroid/view/View;)V

    .line 737
    return-void
.end method

.method private static outputDisplayList(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p0, "root"    # Landroid/view/View;
    .param p1, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 730
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 731
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->outputDisplayList(Landroid/view/View;)V

    .line 732
    return-void
.end method

.method private static performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "captureView"    # Landroid/view/View;
    .param p1, "skipChildren"    # Z

    .line 773
    if-eqz p0, :cond_0

    .line 774
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 775
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v1, v1, [Landroid/graphics/Bitmap;

    .line 777
    .local v1, "cache":[Landroid/graphics/Bitmap;
    new-instance v2, Landroid/view/-$$Lambda$ViewDebug$SYbJuwHeGrHQLha0YsHp4VI9JLg;

    invoke-direct {v2, p0, v1, p1, v0}, Landroid/view/-$$Lambda$ViewDebug$SYbJuwHeGrHQLha0YsHp4VI9JLg;-><init>(Landroid/view/View;[Landroid/graphics/Bitmap;ZLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 790
    const-wide/16 v2, 0xfa0

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 791
    const/4 v2, 0x0

    aget-object v2, v1, v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 792
    :catch_0
    move-exception v2

    .line 793
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "View"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not complete the capture of the view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 798
    .end local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v1    # "cache":[Landroid/graphics/Bitmap;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static profile(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 5
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .param p2, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    invoke-static {p0, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 508
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    .line 510
    .local v1, "out":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const v4, 0x8000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    move-object v1, v2

    .line 512
    if-eqz v0, :cond_0

    .line 513
    invoke-static {v0, v1}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;)V

    goto :goto_0

    .line 515
    :cond_0
    const-string v2, "-1 -1 -1"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 516
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 518
    :goto_0
    const-string v2, "DONE."

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 519
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    nop

    .line 524
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    goto :goto_2

    .line 523
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 520
    :catch_0
    move-exception v2

    .line 521
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "View"

    const-string v4, "Problem profiling the view:"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_1

    goto :goto_1

    .line 527
    :cond_1
    :goto_2
    return-void

    .line 523
    :goto_3
    if-eqz v1, :cond_2

    .line 524
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    :cond_2
    throw v2
.end method

.method private static profileViewAndChildren(Landroid/view/View;Landroid/view/RenderNode;Ljava/io/BufferedWriter;Z)V
    .locals 11
    .param p0, "view"    # Landroid/view/View;
    .param p1, "node"    # Landroid/view/RenderNode;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "root"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 540
    const-wide/16 v0, 0x0

    if-nez p3, :cond_1

    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_0

    goto :goto_0

    .line 541
    :cond_0
    move-wide v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p0}, Landroid/view/ViewDebug;->profileViewMeasure(Landroid/view/View;)J

    move-result-wide v2

    .line 543
    .local v2, "durationMeasure":J
    :goto_1
    if-nez p3, :cond_3

    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_2

    goto :goto_2

    .line 544
    :cond_2
    move-wide v4, v0

    goto :goto_3

    :cond_3
    :goto_2
    invoke-static {p0}, Landroid/view/ViewDebug;->profileViewLayout(Landroid/view/View;)J

    move-result-wide v4

    .line 546
    .local v4, "durationLayout":J
    :goto_3
    const/16 v6, 0x20

    if-nez p3, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z

    move-result v7

    if-eqz v7, :cond_5

    iget v7, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v7, v6

    if-eqz v7, :cond_4

    goto :goto_4

    .line 547
    :cond_4
    goto :goto_5

    :cond_5
    :goto_4
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->profileViewDraw(Landroid/view/View;Landroid/view/RenderNode;)J

    move-result-wide v0

    .line 549
    .local v0, "durationDraw":J
    :goto_5
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p2, v6}, Ljava/io/BufferedWriter;->write(I)V

    .line 551
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p2, v6}, Ljava/io/BufferedWriter;->write(I)V

    .line 553
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V

    .line 555
    instance-of v6, p0, Landroid/view/ViewGroup;

    if-eqz v6, :cond_6

    .line 556
    move-object v6, p0

    check-cast v6, Landroid/view/ViewGroup;

    .line 557
    .local v6, "group":Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 558
    .local v7, "count":I
    const/4 v8, 0x0

    move v9, v8

    .local v9, "i":I
    :goto_6
    if-ge v9, v7, :cond_6

    .line 559
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-static {v10, p1, p2, v8}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Landroid/view/RenderNode;Ljava/io/BufferedWriter;Z)V

    .line 558
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 562
    .end local v6    # "group":Landroid/view/ViewGroup;
    .end local v7    # "count":I
    .end local v9    # "i":I
    :cond_6
    return-void
.end method

.method public static profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 532
    const-string v0, "ViewDebug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    move-result-object v0

    .line 533
    .local v0, "node":Landroid/view/RenderNode;
    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Landroid/view/RenderNode;Ljava/io/BufferedWriter;Z)V

    .line 534
    invoke-virtual {v0}, Landroid/view/RenderNode;->destroy()V

    .line 535
    return-void
.end method

.method private static profileViewDraw(Landroid/view/View;Landroid/view/RenderNode;)J
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "node"    # Landroid/view/RenderNode;

    .line 595
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 596
    .local v0, "dm":Landroid/util/DisplayMetrics;
    if-nez v0, :cond_0

    .line 597
    const-wide/16 v1, 0x0

    return-wide v1

    .line 600
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 601
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1, v1, v2}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    move-result-object v1

    .line 603
    .local v1, "canvas":Landroid/view/DisplayListCanvas;
    :try_start_0
    new-instance v2, Landroid/view/-$$Lambda$ViewDebug$bI5XH5th0NpBuGdZohDPLEpO2Ek;

    invoke-direct {v2, p0, v1}, Landroid/view/-$$Lambda$ViewDebug$bI5XH5th0NpBuGdZohDPLEpO2Ek;-><init>(Landroid/view/View;Landroid/view/DisplayListCanvas;)V

    invoke-static {p0, v2}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    invoke-virtual {p1, v1}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    .line 603
    return-wide v2

    .line 605
    :catchall_0
    move-exception v2

    invoke-virtual {p1, v1}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    throw v2

    .line 608
    .end local v1    # "canvas":Landroid/view/DisplayListCanvas;
    :cond_1
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 610
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 612
    .local v2, "canvas":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    :try_start_1
    new-instance v4, Landroid/view/-$$Lambda$ViewDebug$w986pBwzwNi77yEgLa3IWusjPNw;

    invoke-direct {v4, p0, v2}, Landroid/view/-$$Lambda$ViewDebug$w986pBwzwNi77yEgLa3IWusjPNw;-><init>(Landroid/view/View;Landroid/graphics/Canvas;)V

    invoke-static {p0, v4}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 614
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 615
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 612
    return-wide v4

    .line 614
    :catchall_1
    move-exception v4

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 615
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    throw v4
.end method

.method private static profileViewLayout(Landroid/view/View;)J
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 590
    new-instance v0, Landroid/view/-$$Lambda$ViewDebug$inOytI2zZEgp1DJv8Cu4GjQVNiE;

    invoke-direct {v0, p0}, Landroid/view/-$$Lambda$ViewDebug$inOytI2zZEgp1DJv8Cu4GjQVNiE;-><init>(Landroid/view/View;)V

    invoke-static {p0, v0}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static profileViewMeasure(Landroid/view/View;)J
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 565
    new-instance v0, Landroid/view/ViewDebug$2;

    invoke-direct {v0, p0}, Landroid/view/ViewDebug$2;-><init>(Landroid/view/View;)V

    invoke-static {p0, v0}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "operation"    # Landroid/view/ViewDebug$ViewOperation;

    .line 627
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 628
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v1, v1, [J

    .line 630
    .local v1, "duration":[J
    new-instance v2, Landroid/view/-$$Lambda$ViewDebug$5rTN0pemwbr3I3IL2E-xDBeDTDg;

    invoke-direct {v2, p1, v1, v0}, Landroid/view/-$$Lambda$ViewDebug$5rTN0pemwbr3I3IL2E-xDBeDTDg;-><init>(Landroid/view/ViewDebug$ViewOperation;[JLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 643
    const-wide/16 v2, 0xfa0

    const-wide/16 v4, -0x1

    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 644
    const-string v2, "View"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not complete the profiling of the view "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    return-wide v4

    .line 651
    :cond_0
    nop

    .line 653
    const/4 v2, 0x0

    aget-wide v2, v1, v2

    return-wide v2

    .line 647
    :catch_0
    move-exception v2

    .line 648
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "View"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not complete the profiling of the view "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 650
    return-wide v4
.end method

.method private static requestLayout(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p0, "root"    # Landroid/view/View;
    .param p1, "parameter"    # Ljava/lang/String;

    .line 494
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 495
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 496
    new-instance v1, Landroid/view/ViewDebug$1;

    invoke-direct {v1, v0}, Landroid/view/ViewDebug$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 502
    :cond_0
    return-void
.end method

.method static resolveId(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .line 1498
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1499
    .local v0, "resources":Landroid/content/res/Resources;
    if-ltz p1, :cond_0

    .line 1501
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1502
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, "fieldValue":Ljava/lang/Object;
    goto :goto_0

    .line 1503
    .end local v1    # "fieldValue":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 1504
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/view/ViewDebug;->formatIntToHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1505
    .local v1, "fieldValue":Ljava/lang/Object;
    :goto_0
    goto :goto_1

    .line 1507
    .end local v1    # "fieldValue":Ljava/lang/Object;
    :cond_0
    const-string v1, "NO_ID"

    .line 1509
    .restart local v1    # "fieldValue":Ljava/lang/Object;
    :goto_1
    return-object v1
.end method

.method public static setLayoutParameter(Landroid/view/View;Ljava/lang/String;I)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1727
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1728
    .local v0, "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1729
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_0

    .line 1734
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1736
    new-instance v2, Landroid/view/ViewDebug$6;

    invoke-direct {v2, p0, v0}, Landroid/view/ViewDebug$6;-><init>(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1742
    return-void

    .line 1730
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Only integer layout parameters can be set. Field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1731
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static startHierarchyTracing(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 428
    return-void
.end method

.method public static startRecyclerTracing(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 404
    return-void
.end method

.method public static stopHierarchyTracing()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 435
    return-void
.end method

.method public static stopRecyclerTracing()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 412
    return-void
.end method

.method public static trace(Landroid/view/View;Landroid/view/ViewDebug$HierarchyTraceType;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "type"    # Landroid/view/ViewDebug$HierarchyTraceType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 420
    return-void
.end method

.method public static varargs trace(Landroid/view/View;Landroid/view/ViewDebug$RecyclerTraceType;[I)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "type"    # Landroid/view/ViewDebug$RecyclerTraceType;
    .param p2, "parameters"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 396
    return-void
.end method

.method private static writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "out"    # Ljava/io/BufferedWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1344
    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1345
    invoke-virtual {p0, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1346
    invoke-virtual {p0, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1347
    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1348
    invoke-static {p0, p4}, Landroid/view/ViewDebug;->writeValue(Ljava/io/BufferedWriter;Ljava/lang/Object;)V

    .line 1349
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(I)V

    .line 1350
    return-void
.end method

.method private static writeValue(Ljava/io/BufferedWriter;Ljava/lang/Object;)V
    .locals 4
    .param p0, "out"    # Ljava/io/BufferedWriter;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1513
    if-eqz p1, :cond_0

    .line 1514
    const-string v0, "[EXCEPTION]"

    .line 1516
    .local v0, "output":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, "\\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 1518
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1519
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1520
    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1521
    nop

    .line 1522
    .end local v0    # "output":Ljava/lang/String;
    goto :goto_0

    .line 1518
    .restart local v0    # "output":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1519
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1520
    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    throw v1

    .line 1523
    .end local v0    # "output":Ljava/lang/String;
    :cond_0
    const-string v0, "4,null"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1525
    :goto_0
    return-void
.end method
