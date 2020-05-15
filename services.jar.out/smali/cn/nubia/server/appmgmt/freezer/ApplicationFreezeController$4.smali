.class Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$4;
.super Ljava/lang/Object;
.source "ApplicationFreezeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 154
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$4;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAllTids()[I
    .locals 9

    .line 156
    const-string v0, "/dev/freezer/bg/tasks"

    .line 157
    .local v0, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .local v1, "bgTidsFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 159
    .local v2, "tidsList":[I
    const/4 v3, 0x0

    .line 160
    .local v3, "br":Ljava/io/BufferedReader;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 163
    .local v5, "fis":Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 164
    .local v6, "isr":Ljava/io/InputStreamReader;
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v7

    .line 166
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .local v8, "line":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 167
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 172
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .end local v8    # "line":Ljava/lang/String;
    :cond_0
    nop

    .line 174
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 176
    :goto_1
    goto :goto_2

    .line 175
    :catch_0
    move-exception v5

    goto :goto_1

    .line 172
    :catchall_0
    move-exception v5

    goto :goto_5

    .line 169
    :catch_1
    move-exception v5

    .line 170
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "ApplicationFreeze"

    const-string v7, "getAllTids"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_1

    .line 174
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 179
    :cond_1
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v2, v5, [I

    .line 180
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 182
    :try_start_4
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v2, v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 184
    goto :goto_4

    .line 183
    :catch_2
    move-exception v6

    .line 180
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 186
    .end local v5    # "i":I
    :cond_2
    return-object v2

    .line 172
    :goto_5
    if-eqz v3, :cond_3

    .line 174
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 176
    goto :goto_6

    .line 175
    :catch_3
    move-exception v6

    .line 176
    :cond_3
    :goto_6
    throw v5
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 191
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$4;->getAllTids()[I

    move-result-object v0

    .line 192
    .local v0, "tidsList":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 193
    const-string v1, "ApplicationFreeze"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tidsList.length= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$4;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->access$400(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)Lcn/nubia/server/appmgmt/freezer/FreezerProxy;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;->unfreeze([II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v0    # "tidsList":[I
    :cond_0
    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 199
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
