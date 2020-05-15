.class Landroid/content/res/NubiaDrawableCacheUtil$DrawableThread;
.super Ljava/lang/Thread;
.source "NubiaDrawableCacheUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/NubiaDrawableCacheUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrawableThread"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "threadName"    # Ljava/lang/String;

    .line 182
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method private clearAppPreloadDrawable(Z)V
    .locals 2
    .param p1, "isSleep"    # Z

    .line 225
    if-eqz p1, :cond_0

    .line 227
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 232
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    invoke-static {}, Landroid/content/res/NubiaDrawableCacheUtil;->access$300()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 233
    invoke-static {}, Landroid/content/res/NubiaDrawableCacheUtil;->access$300()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 234
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/res/NubiaDrawableCacheUtil;->access$402(Z)Z

    .line 235
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/res/NubiaDrawableCacheUtil;->access$002(Landroid/content/Context;)Landroid/content/Context;

    .line 237
    :cond_1
    return-void
.end method

.method private getCacheId()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 214
    invoke-static {}, Landroid/content/res/NubiaDrawableCacheUtil;->access$000()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "nubia_cache_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 215
    .local v0, "prefs":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v1, "cacheIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v3, "cache_drawable_size"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 217
    .local v3, "cacheSize":I
    move v4, v2

    .line 217
    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 218
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cache_drawable_item_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 219
    .local v5, "id":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    .end local v5    # "id":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 221
    .end local v4    # "i":I
    :cond_0
    return-object v1
.end method

.method private getCurProcessesName()Ljava/lang/String;
    .locals 5

    .line 205
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 206
    .local v0, "pid":I
    invoke-static {}, Landroid/content/res/NubiaDrawableCacheUtil;->access$000()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 207
    .local v1, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 208
    .local v3, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v0, :cond_0

    iget-object v2, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object v2

    .line 209
    .end local v3    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    goto :goto_0

    .line 210
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private startPreloadDrawable(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 240
    .local p1, "ar":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    .line 241
    .local v1, "N":I
    invoke-static {}, Landroid/content/res/NubiaDrawableCacheUtil;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v2

    .line 242
    .local v2, "impl":Landroid/content/res/ResourcesImpl;
    if-nez v2, :cond_0

    return-void

    .line 243
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    .line 243
    .local v0, "i":I
    :goto_0
    move v4, v0

    .line 243
    .end local v0    # "i":I
    .local v4, "i":I
    if-ge v4, v1, :cond_7

    .line 244
    move-object/from16 v5, p1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 245
    .local v6, "id":I
    if-gtz v6, :cond_1

    .line 245
    .end local v6    # "id":I
    goto/16 :goto_3

    .line 247
    .restart local v6    # "id":I
    :cond_1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    move-object v7, v0

    .line 249
    .local v7, "value":Landroid/util/TypedValue;
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v2, v6, v7, v0}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 250
    iget-object v8, v7, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v8, :cond_2

    .line 251
    goto/16 :goto_3

    .line 253
    :cond_2
    iget-object v8, v7, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "res/drawable"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 254
    invoke-static {}, Landroid/content/res/NubiaDrawableCacheUtil;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 255
    goto/16 :goto_3

    .line 257
    :cond_3
    const/4 v8, 0x0

    .line 258
    .local v8, "dr":Landroid/graphics/drawable/Drawable;
    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 259
    .local v9, "currentSDKVersion":I
    const-string v10, "android.content.res.ResourcesImpl"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 260
    .local v10, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v11, 0x9

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x4

    if-lt v9, v11, :cond_4

    .line 261
    const-string/jumbo v11, "loadDrawableForCookie"

    new-array v15, v14, [Ljava/lang/Class;

    const-class v16, Landroid/content/res/Resources;

    aput-object v16, v15, v3

    const-class v16, Landroid/util/TypedValue;

    aput-object v16, v15, v0

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v16, v15, v13

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v16, v15, v12

    invoke-virtual {v10, v11, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 262
    .local v11, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v11, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 263
    new-array v15, v14, [Ljava/lang/Object;

    invoke-static {}, Landroid/content/res/NubiaDrawableCacheUtil;->access$000()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    aput-object v14, v15, v3

    aput-object v7, v15, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v15, v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v15, v12

    invoke-virtual {v11, v2, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 264
    .end local v8    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v11    # "m":Ljava/lang/reflect/Method;
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 265
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v8    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_4
    const-string/jumbo v11, "loadDrawableForCookie"

    const/4 v14, 0x5

    new-array v15, v14, [Ljava/lang/Class;

    const-class v16, Landroid/content/res/Resources;

    aput-object v16, v15, v3

    const-class v16, Landroid/util/TypedValue;

    aput-object v16, v15, v0

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v16, v15, v13

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v16, v15, v12

    const-class v16, Landroid/content/res/Resources$Theme;

    const/16 v17, 0x4

    aput-object v16, v15, v17

    invoke-virtual {v10, v11, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 266
    .restart local v11    # "m":Ljava/lang/reflect/Method;
    invoke-virtual {v11, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 267
    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {}, Landroid/content/res/NubiaDrawableCacheUtil;->access$000()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    aput-object v15, v14, v3

    aput-object v7, v14, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v14, v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v14, v12

    const/4 v0, 0x0

    const/4 v12, 0x4

    aput-object v0, v14, v12

    invoke-virtual {v11, v2, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 269
    .end local v8    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v11    # "m":Ljava/lang/reflect/Method;
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_1
    if-eqz v0, :cond_6

    .line 270
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v8

    .line 271
    .local v8, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v8, :cond_6

    .line 272
    invoke-static {}, Landroid/content/res/NubiaDrawableCacheUtil;->access$300()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12, v8}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-static {}, Landroid/content/res/NubiaDrawableCacheUtil;->access$500()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v14, v7, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v11, v12, v14}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    const/16 v12, 0x384

    if-le v11, v12, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    if-le v11, v12, :cond_5

    invoke-static {}, Landroid/content/res/NubiaDrawableCacheUtil;->access$600()I

    move-result v11

    if-ge v11, v13, :cond_5

    .line 275
    invoke-static {}, Landroid/content/res/NubiaDrawableCacheUtil;->access$608()I

    .line 276
    invoke-static {}, Landroid/content/res/NubiaDrawableCacheUtil;->access$100()Ljava/util/List;

    move-result-object v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 278
    :cond_5
    invoke-static {}, Landroid/content/res/NubiaDrawableCacheUtil;->access$700()I

    move-result v11

    const/4 v12, 0x4

    if-ge v11, v12, :cond_6

    .line 279
    invoke-static {}, Landroid/content/res/NubiaDrawableCacheUtil;->access$708()I

    .line 280
    invoke-static {}, Landroid/content/res/NubiaDrawableCacheUtil;->access$100()Ljava/util/List;

    move-result-object v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v8    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v9    # "currentSDKVersion":I
    .end local v10    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    :goto_2
    goto :goto_3

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "NubiaDrawalbeCacheUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Preloading resource #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " has excetpion e.message="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 243
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "id":I
    .end local v7    # "value":Landroid/util/TypedValue;
    :goto_3
    add-int/lit8 v0, v4, 0x1

    .line 243
    .end local v4    # "i":I
    .local v0, "i":I
    goto/16 :goto_0

    .line 290
    .end local v0    # "i":I
    :cond_7
    move-object/from16 v5, p1

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 186
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 188
    :try_start_0
    invoke-static {}, Landroid/content/res/NubiaDrawableCacheUtil;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0}, Landroid/content/res/NubiaDrawableCacheUtil$DrawableThread;->getCurProcessesName()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "processName":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 192
    return-void

    .line 194
    :cond_0
    invoke-direct {p0}, Landroid/content/res/NubiaDrawableCacheUtil$DrawableThread;->getCacheId()Ljava/util/List;

    move-result-object v2

    .line 195
    .local v2, "ar":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, v2}, Landroid/content/res/NubiaDrawableCacheUtil$DrawableThread;->startPreloadDrawable(Ljava/util/List;)V

    .line 196
    invoke-static {}, Landroid/content/res/NubiaDrawableCacheUtil;->access$200()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "processName":Ljava/lang/String;
    .end local v2    # "ar":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NubiaDrawalbeCacheUtil"

    const-string v2, "DrawableThread exception"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
