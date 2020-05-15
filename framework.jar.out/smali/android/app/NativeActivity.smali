.class public Landroid/app/NativeActivity;
.super Landroid/app/Activity;
.source "NativeActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;
.implements Landroid/view/InputQueue$Callback;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/NativeActivity$NativeContentView;
    }
.end annotation


# static fields
.field private static final KEY_NATIVE_SAVED_STATE:Ljava/lang/String; = "android:native_state"

.field public static final META_DATA_FUNC_NAME:Ljava/lang/String; = "android.app.func_name"

.field public static final META_DATA_LIB_NAME:Ljava/lang/String; = "android.app.lib_name"


# instance fields
.field private mCurInputQueue:Landroid/view/InputQueue;

.field private mCurSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mDestroyed:Z

.field private mDispatchingUnhandledKey:Z

.field private mIMM:Landroid/view/inputmethod/InputMethodManager;

.field mLastContentHeight:I

.field mLastContentWidth:I

.field mLastContentX:I

.field mLastContentY:I

.field final mLocation:[I

.field private mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

.field private mNativeHandle:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/app/NativeActivity;->mLocation:[I

    return-void
.end method

.method private static getAbsolutePath(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 181
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private native getDlError()Ljava/lang/String;
.end method

.method private native loadNativeCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/MessageQueue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/res/AssetManager;[BLjava/lang/ClassLoader;Ljava/lang/String;)J
.end method

.method private native onConfigurationChangedNative(J)V
.end method

.method private native onContentRectChangedNative(JIIII)V
.end method

.method private native onInputQueueCreatedNative(JJ)V
.end method

.method private native onInputQueueDestroyedNative(JJ)V
.end method

.method private native onLowMemoryNative(J)V
.end method

.method private native onPauseNative(J)V
.end method

.method private native onResumeNative(J)V
.end method

.method private native onSaveInstanceStateNative(J)[B
.end method

.method private native onStartNative(J)V
.end method

.method private native onStopNative(J)V
.end method

.method private native onSurfaceChangedNative(JLandroid/view/Surface;III)V
.end method

.method private native onSurfaceCreatedNative(JLandroid/view/Surface;)V
.end method

.method private native onSurfaceDestroyedNative(J)V
.end method

.method private native onSurfaceRedrawNeededNative(JLandroid/view/Surface;)V
.end method

.method private native onWindowFocusChangedNative(JZ)V
.end method

.method private native unloadNativeCode(J)V
.end method


# virtual methods
.method hideIme(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 328
    iget-object v0, p0, Landroid/app/NativeActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v1}, Landroid/app/NativeActivity$NativeContentView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 329
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 234
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 235
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 236
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onConfigurationChangedNative(J)V

    .line 238
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    move-object/from16 v13, p0

    .line 124
    move-object/from16 v14, p1

    const-string/jumbo v1, "main"

    .line 125
    .local v1, "libname":Ljava/lang/String;
    const-string v2, "ANativeActivity_onCreate"

    .line 128
    .local v2, "funcname":Ljava/lang/String;
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v13, v0}, Landroid/app/NativeActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, v13, Landroid/app/NativeActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 130
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/Window;->takeSurface(Landroid/view/SurfaceHolder$Callback2;)V

    .line 131
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/Window;->takeInputQueue(Landroid/view/InputQueue$Callback;)V

    .line 132
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/Window;->setFormat(I)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 137
    new-instance v0, Landroid/app/NativeActivity$NativeContentView;

    invoke-direct {v0, v13}, Landroid/app/NativeActivity$NativeContentView;-><init>(Landroid/content/Context;)V

    iput-object v0, v13, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    .line 138
    iget-object v0, v13, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    iput-object v13, v0, Landroid/app/NativeActivity$NativeContentView;->mActivity:Landroid/app/NativeActivity;

    .line 139
    iget-object v0, v13, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v13, v0}, Landroid/app/NativeActivity;->setContentView(Landroid/view/View;)V

    .line 140
    iget-object v0, v13, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v0}, Landroid/app/NativeActivity$NativeContentView;->requestFocus()Z

    .line 141
    iget-object v0, v13, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v0}, Landroid/app/NativeActivity$NativeContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 144
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 145
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    const/16 v4, 0x80

    .line 144
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 146
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 147
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "android.app.lib_name"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "ln":Ljava/lang/String;
    if-eqz v3, :cond_0

    move-object v1, v3

    .line 149
    :cond_0
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "android.app.func_name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 150
    if-eqz v3, :cond_1

    move-object v2, v3

    .line 154
    .end local v1    # "libname":Ljava/lang/String;
    .end local v2    # "funcname":Ljava/lang/String;
    .end local v3    # "ln":Ljava/lang/String;
    .local v15, "libname":Ljava/lang/String;
    .local v16, "funcname":Ljava/lang/String;
    :cond_1
    move-object v15, v1

    move-object/from16 v16, v2

    .line 153
    nop

    .line 156
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ldalvik/system/BaseDexClassLoader;

    .line 157
    .local v12, "classLoader":Ldalvik/system/BaseDexClassLoader;
    invoke-virtual {v12, v15}, Ldalvik/system/BaseDexClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 159
    .local v11, "path":Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 164
    const/4 v1, 0x0

    if-eqz v14, :cond_2

    .line 165
    const-string v2, "android:native_state"

    invoke-virtual {v14, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    move-object v10, v2

    goto :goto_0

    :cond_2
    move-object v10, v1

    .line 167
    .local v10, "nativeSavedState":[B
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v4

    .line 168
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/app/NativeActivity;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getObbDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/app/NativeActivity;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    .line 169
    invoke-virtual {v13, v1}, Landroid/app/NativeActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/app/NativeActivity;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 170
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    .line 171
    invoke-virtual {v12}, Ldalvik/system/BaseDexClassLoader;->getLdLibraryPath()Ljava/lang/String;

    move-result-object v17

    .line 167
    move-object v1, v13

    move-object v2, v11

    move-object/from16 v3, v16

    move-object/from16 v18, v0

    move-object v0, v11

    move-object v11, v12

    .line 167
    .end local v11    # "path":Ljava/lang/String;
    .local v0, "path":Ljava/lang/String;
    .local v18, "ai":Landroid/content/pm/ActivityInfo;
    move-object/from16 v19, v12

    move-object/from16 v12, v17

    .line 167
    .end local v12    # "classLoader":Ldalvik/system/BaseDexClassLoader;
    .local v19, "classLoader":Ldalvik/system/BaseDexClassLoader;
    invoke-direct/range {v1 .. v12}, Landroid/app/NativeActivity;->loadNativeCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/MessageQueue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/res/AssetManager;[BLjava/lang/ClassLoader;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v13, Landroid/app/NativeActivity;->mNativeHandle:J

    .line 173
    iget-wide v1, v13, Landroid/app/NativeActivity;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 177
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 178
    return-void

    .line 174
    :cond_3
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load native library \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-direct/range {p0 .. p0}, Landroid/app/NativeActivity;->getDlError()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    .end local v10    # "nativeSavedState":[B
    .end local v18    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v19    # "classLoader":Ldalvik/system/BaseDexClassLoader;
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    .restart local v11    # "path":Ljava/lang/String;
    .restart local v12    # "classLoader":Ldalvik/system/BaseDexClassLoader;
    :cond_4
    move-object/from16 v18, v0

    move-object v0, v11

    move-object/from16 v19, v12

    .line 160
    .end local v11    # "path":Ljava/lang/String;
    .end local v12    # "classLoader":Ldalvik/system/BaseDexClassLoader;
    .local v0, "path":Ljava/lang/String;
    .restart local v18    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v19    # "classLoader":Ldalvik/system/BaseDexClassLoader;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find native library "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " using classloader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    move-object/from16 v3, v19

    invoke-virtual {v3}, Ldalvik/system/BaseDexClassLoader;->toString()Ljava/lang/String;

    move-result-object v4

    .line 161
    .end local v19    # "classLoader":Ldalvik/system/BaseDexClassLoader;
    .local v3, "classLoader":Ldalvik/system/BaseDexClassLoader;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    .end local v0    # "path":Ljava/lang/String;
    .end local v3    # "classLoader":Ldalvik/system/BaseDexClassLoader;
    .end local v15    # "libname":Ljava/lang/String;
    .end local v16    # "funcname":Ljava/lang/String;
    .end local v18    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "libname":Ljava/lang/String;
    .restart local v2    # "funcname":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error getting activity info"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected onDestroy()V
    .locals 6

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    .line 187
    iget-object v0, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 188
    iget-wide v2, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v2, v3}, Landroid/app/NativeActivity;->onSurfaceDestroyedNative(J)V

    .line 189
    iput-object v1, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 191
    :cond_0
    iget-object v0, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    if-eqz v0, :cond_1

    .line 192
    iget-wide v2, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    iget-object v0, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    invoke-virtual {v0}, Landroid/view/InputQueue;->getNativePtr()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/app/NativeActivity;->onInputQueueDestroyedNative(JJ)V

    .line 193
    iput-object v1, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    .line 195
    :cond_1
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->unloadNativeCode(J)V

    .line 196
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 197
    return-void
.end method

.method public onGlobalLayout()V
    .locals 10

    .line 299
    iget-object v0, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    iget-object v1, p0, Landroid/app/NativeActivity;->mLocation:[I

    invoke-virtual {v0, v1}, Landroid/app/NativeActivity$NativeContentView;->getLocationInWindow([I)V

    .line 300
    iget-object v0, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v0}, Landroid/app/NativeActivity$NativeContentView;->getWidth()I

    move-result v0

    .line 301
    .local v0, "w":I
    iget-object v1, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v1}, Landroid/app/NativeActivity$NativeContentView;->getHeight()I

    move-result v1

    .line 302
    .local v1, "h":I
    iget-object v2, p0, Landroid/app/NativeActivity;->mLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget v4, p0, Landroid/app/NativeActivity;->mLastContentX:I

    const/4 v5, 0x1

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Landroid/app/NativeActivity;->mLocation:[I

    aget v2, v2, v5

    iget v4, p0, Landroid/app/NativeActivity;->mLastContentY:I

    if-ne v2, v4, :cond_0

    iget v2, p0, Landroid/app/NativeActivity;->mLastContentWidth:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Landroid/app/NativeActivity;->mLastContentHeight:I

    if-eq v1, v2, :cond_1

    .line 304
    :cond_0
    iget-object v2, p0, Landroid/app/NativeActivity;->mLocation:[I

    aget v2, v2, v3

    iput v2, p0, Landroid/app/NativeActivity;->mLastContentX:I

    .line 305
    iget-object v2, p0, Landroid/app/NativeActivity;->mLocation:[I

    aget v2, v2, v5

    iput v2, p0, Landroid/app/NativeActivity;->mLastContentY:I

    .line 306
    iput v0, p0, Landroid/app/NativeActivity;->mLastContentWidth:I

    .line 307
    iput v1, p0, Landroid/app/NativeActivity;->mLastContentHeight:I

    .line 308
    iget-boolean v2, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v2, :cond_1

    .line 309
    iget-wide v4, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    iget v6, p0, Landroid/app/NativeActivity;->mLastContentX:I

    iget v7, p0, Landroid/app/NativeActivity;->mLastContentY:I

    iget v8, p0, Landroid/app/NativeActivity;->mLastContentWidth:I

    iget v9, p0, Landroid/app/NativeActivity;->mLastContentHeight:I

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Landroid/app/NativeActivity;->onContentRectChangedNative(JIIII)V

    .line 313
    :cond_1
    return-void
.end method

.method public onInputQueueCreated(Landroid/view/InputQueue;)V
    .locals 4
    .param p1, "queue"    # Landroid/view/InputQueue;

    .line 285
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 286
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    .line 287
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-virtual {p1}, Landroid/view/InputQueue;->getNativePtr()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/app/NativeActivity;->onInputQueueCreatedNative(JJ)V

    .line 289
    :cond_0
    return-void
.end method

.method public onInputQueueDestroyed(Landroid/view/InputQueue;)V
    .locals 4
    .param p1, "queue"    # Landroid/view/InputQueue;

    .line 292
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 293
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-virtual {p1}, Landroid/view/InputQueue;->getNativePtr()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/app/NativeActivity;->onInputQueueDestroyedNative(JJ)V

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    .line 296
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .line 242
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 243
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 244
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onLowMemoryNative(J)V

    .line 246
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 201
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 202
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onPauseNative(J)V

    .line 203
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 207
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 208
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onResumeNative(J)V

    .line 209
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 213
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 214
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onSaveInstanceStateNative(J)[B

    move-result-object v0

    .line 215
    .local v0, "state":[B
    if-eqz v0, :cond_0

    .line 216
    const-string v1, "android:native_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 218
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 222
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 223
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onStartNative(J)V

    .line 224
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 228
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 229
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onStopNative(J)V

    .line 230
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .line 250
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 251
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 252
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Landroid/app/NativeActivity;->onWindowFocusChangedNative(JZ)V

    .line 254
    :cond_0
    return-void
.end method

.method setWindowFlags(II)V
    .locals 1
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .line 316
    invoke-virtual {p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFlags(II)V

    .line 317
    return-void
.end method

.method setWindowFormat(I)V
    .locals 1
    .param p1, "format"    # I

    .line 320
    invoke-virtual {p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setFormat(I)V

    .line 321
    return-void
.end method

.method showIme(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 324
    iget-object v0, p0, Landroid/app/NativeActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 325
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 8
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 264
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 265
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 266
    iget-wide v2, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v4

    move-object v1, p0

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Landroid/app/NativeActivity;->onSurfaceChangedNative(JLandroid/view/Surface;III)V

    .line 268
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 257
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 258
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 259
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/app/NativeActivity;->onSurfaceCreatedNative(JLandroid/view/Surface;)V

    .line 261
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 279
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 280
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onSurfaceDestroyedNative(J)V

    .line 282
    :cond_0
    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 271
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 272
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 273
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/app/NativeActivity;->onSurfaceRedrawNeededNative(JLandroid/view/Surface;)V

    .line 275
    :cond_0
    return-void
.end method
