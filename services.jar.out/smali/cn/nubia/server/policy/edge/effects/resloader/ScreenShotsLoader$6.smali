.class Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;
.super Landroid/os/AsyncTask;
.source "ScreenShotsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->notifyLoadGuideIcon(Ljava/util/List;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

.field final synthetic val$hashList:Ljava/util/List;

.field final synthetic val$isRight:Z

.field final synthetic val$packageList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;Ljava/util/List;ZLjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    .line 793
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->val$packageList:Ljava/util/List;

    iput-boolean p3, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->val$isRight:Z

    iput-object p4, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->val$hashList:Ljava/util/List;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 793
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 16
    .param p1, "params"    # [Ljava/lang/Void;

    move-object/from16 v1, p0

    .line 814
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    .line 815
    .local v2, "origPri":I
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 817
    const/4 v0, 0x0

    .line 818
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 819
    .local v3, "name":Ljava/lang/String;
    :try_start_0
    iget-object v4, v1, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-static {v4}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->access$500(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 820
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    move-object v6, v0

    move v0, v5

    .line 820
    .local v0, "i":I
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    iget-object v7, v1, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->val$packageList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 821
    iget-object v7, v1, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->val$packageList:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 822
    .local v7, "packageName":Ljava/lang/String;
    const-string/jumbo v8, "invalide_up_package"

    .line 823
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "invalide_down_package"

    .line 825
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    .line 828
    :cond_0
    invoke-virtual {v4, v7, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 830
    .local v8, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v8, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 831
    .local v9, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v10

    .line 832
    .local v10, "w":I
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v11

    .line 833
    .local v11, "h":I
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 835
    .local v12, "tempBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v9, v5, v5, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 836
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 837
    .local v13, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v9, v13}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 838
    iget-object v14, v1, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    iget-boolean v15, v1, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->val$isRight:Z

    invoke-virtual {v14, v12, v15}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->createShadowIcon(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    move-object v6, v14

    .line 838
    .end local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v10    # "w":I
    .end local v11    # "h":I
    .end local v12    # "tempBitmap":Landroid/graphics/Bitmap;
    .end local v13    # "canvas":Landroid/graphics/Canvas;
    goto :goto_2

    .line 826
    :cond_1
    :goto_1
    const/4 v6, 0x0

    .line 840
    :goto_2
    const-string v8, "FitAnim"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " notifyLoadGuideIcon hashcode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->val$hashList:Ljava/util/List;

    .line 843
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " bitmap="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " packageName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 840
    invoke-static {v8, v9}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    new-instance v8, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;

    iget-object v9, v1, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    iget-object v10, v1, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->val$hashList:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v8, v9, v10, v6}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;-><init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;ILandroid/graphics/Bitmap;)V

    .line 847
    .local v8, "data":Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;
    const/4 v9, 0x1

    new-array v9, v9, [Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;

    aput-object v8, v9, v5

    invoke-virtual {v1, v9}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 820
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "data":Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 851
    .end local v0    # "i":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    goto :goto_3

    .line 849
    :catch_0
    move-exception v0

    .line 850
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, v1, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-static {v3}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->access$100(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->reportException(Ljava/lang/Exception;)V

    .line 852
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 793
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Void;

    .line 857
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 859
    return-void
.end method

.method protected varargs onProgressUpdate([Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;)V
    .locals 3
    .param p1, "values"    # [Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;

    .line 797
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 798
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 799
    .local v0, "data":Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;
    if-eqz v0, :cond_0

    .line 800
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-static {v1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->access$200(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6$1;

    invoke-direct {v2, p0, v0}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6$1;-><init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 810
    .end local v0    # "data":Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 793
    check-cast p1, [Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;

    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->onProgressUpdate([Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;)V

    return-void
.end method
