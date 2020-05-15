.class public Lcom/android/server/policy/PolicyControl;
.super Ljava/lang/Object;
.source "PolicyControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PolicyControl$Filter;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final NAME_IMMERSIVE_FULL:Ljava/lang/String; = "immersive.full"

.field private static final NAME_IMMERSIVE_NAVIGATION:Ljava/lang/String; = "immersive.navigation"

.field private static final NAME_IMMERSIVE_PRECONFIRMATIONS:Ljava/lang/String; = "immersive.preconfirms"

.field private static final NAME_IMMERSIVE_STATUS:Ljava/lang/String; = "immersive.status"

.field private static TAG:Ljava/lang/String;

.field private static sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

.field private static sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

.field private static sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

.field private static sSettingValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-string v0, "PolicyControl"

    sput-object v0, Lcom/android/server/policy/PolicyControl;->TAG:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/PolicyControl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustClearableFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)I
    .locals 2
    .param p0, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p1, "clearableFlags"    # I

    .line 102
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 103
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    and-int/lit8 p1, p1, -0x5

    .line 106
    :cond_1
    return p1
.end method

.method public static disableImmersiveConfirmation(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .line 110
    sget-object v0, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    .line 111
    invoke-virtual {v0, p0}, Lcom/android/server/policy/PolicyControl$Filter;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 110
    :goto_0
    return v0
.end method

.method private static dump(Ljava/lang/String;Lcom/android/server/policy/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "filter"    # Lcom/android/server/policy/PolicyControl$Filter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .line 137
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "PolicyControl."

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x3d

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 138
    if-nez p1, :cond_0

    .line 139
    const-string/jumbo v0, "null"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p1, p3}, Lcom/android/server/policy/PolicyControl$Filter;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 143
    :goto_0
    return-void
.end method

.method public static dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 131
    const-string/jumbo v0, "sImmersiveStatusFilter"

    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/policy/PolicyControl;->dump(Ljava/lang/String;Lcom/android/server/policy/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 132
    const-string/jumbo v0, "sImmersiveNavigationFilter"

    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/policy/PolicyControl;->dump(Ljava/lang/String;Lcom/android/server/policy/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 133
    const-string/jumbo v0, "sImmersivePreconfirmationsFilter"

    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/policy/PolicyControl;->dump(Ljava/lang/String;Lcom/android/server/policy/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 134
    return-void
.end method

.method public static getSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 2
    .param p0, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 67
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    :goto_0
    move-object p1, v0

    .line 68
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v0

    goto :goto_1

    .line 69
    :cond_1
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v0, v1

    .line 70
    .local v0, "vis":I
    :goto_1
    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    or-int/lit16 v0, v0, 0x1404

    .line 74
    const v1, -0x40000101    # -1.9999694f

    and-int/2addr v0, v1

    .line 77
    :cond_2
    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    or-int/lit16 v0, v0, 0x1202

    .line 81
    const v1, 0x7ffffeff

    and-int/2addr v0, v1

    .line 84
    :cond_3
    return v0
.end method

.method public static getWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 2
    .param p0, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 88
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    :goto_0
    move-object p1, v0

    .line 89
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 90
    .local v0, "flags":I
    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    or-int/lit16 v0, v0, 0x400

    .line 92
    const v1, -0x4000801

    and-int/2addr v0, v1

    .line 95
    :cond_1
    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    const v1, -0x8000001

    and-int/2addr v0, v1

    .line 98
    :cond_2
    return v0
.end method

.method public static reloadFromSetting(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 116
    sget-boolean v0, Lcom/android/server/policy/PolicyControl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/policy/PolicyControl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "reloadFromSetting()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    const/4 v0, 0x0

    .line 119
    .local v0, "value":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "policy_control"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 122
    sget-object v1, Lcom/android/server/policy/PolicyControl;->sSettingValue:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/policy/PolicyControl;->sSettingValue:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 123
    :cond_1
    invoke-static {v0}, Lcom/android/server/policy/PolicyControl;->setFilters(Ljava/lang/String;)V

    .line 124
    sput-object v0, Lcom/android/server/policy/PolicyControl;->sSettingValue:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    goto :goto_0

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/android/server/policy/PolicyControl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading policy control, value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private static setFilters(Ljava/lang/String;)V
    .locals 10
    .param p0, "value"    # Ljava/lang/String;

    .line 146
    sget-boolean v0, Lcom/android/server/policy/PolicyControl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/policy/PolicyControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFilters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    .line 148
    sput-object v0, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    .line 149
    sput-object v0, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    .line 150
    if-eqz p0, :cond_8

    .line 151
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "nvps":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_8

    aget-object v4, v0, v3

    .line 153
    .local v4, "nvp":Ljava/lang/String;
    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 154
    .local v5, "i":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 154
    .end local v4    # "nvp":Ljava/lang/String;
    .end local v5    # "i":I
    goto :goto_1

    .line 155
    .restart local v4    # "nvp":Ljava/lang/String;
    .restart local v5    # "i":I
    :cond_1
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 156
    .local v6, "n":Ljava/lang/String;
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 157
    .local v7, "v":Ljava/lang/String;
    const-string v8, "immersive.full"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 158
    invoke-static {v7}, Lcom/android/server/policy/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/policy/PolicyControl$Filter;

    move-result-object v8

    .line 159
    .local v8, "f":Lcom/android/server/policy/PolicyControl$Filter;
    sput-object v8, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    sput-object v8, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    .line 160
    sget-object v9, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    if-nez v9, :cond_2

    .line 161
    sput-object v8, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    .line 163
    .end local v8    # "f":Lcom/android/server/policy/PolicyControl$Filter;
    :cond_2
    goto :goto_1

    :cond_3
    const-string/jumbo v8, "immersive.status"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 164
    invoke-static {v7}, Lcom/android/server/policy/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/policy/PolicyControl$Filter;

    move-result-object v8

    .line 165
    .restart local v8    # "f":Lcom/android/server/policy/PolicyControl$Filter;
    sput-object v8, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    .line 166
    .end local v8    # "f":Lcom/android/server/policy/PolicyControl$Filter;
    goto :goto_1

    :cond_4
    const-string v8, "immersive.navigation"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 167
    invoke-static {v7}, Lcom/android/server/policy/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/policy/PolicyControl$Filter;

    move-result-object v8

    .line 168
    .restart local v8    # "f":Lcom/android/server/policy/PolicyControl$Filter;
    sput-object v8, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    .line 169
    sget-object v9, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    if-nez v9, :cond_5

    .line 170
    sput-object v8, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    .line 172
    .end local v8    # "f":Lcom/android/server/policy/PolicyControl$Filter;
    :cond_5
    goto :goto_1

    :cond_6
    const-string v8, "immersive.preconfirms"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 173
    invoke-static {v7}, Lcom/android/server/policy/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/policy/PolicyControl$Filter;

    move-result-object v8

    .line 174
    .restart local v8    # "f":Lcom/android/server/policy/PolicyControl$Filter;
    sput-object v8, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    .line 152
    .end local v4    # "nvp":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "n":Ljava/lang/String;
    .end local v7    # "v":Ljava/lang/String;
    .end local v8    # "f":Lcom/android/server/policy/PolicyControl$Filter;
    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
    .end local v0    # "nvps":[Ljava/lang/String;
    :cond_8
    sget-boolean v0, Lcom/android/server/policy/PolicyControl;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 179
    sget-object v0, Lcom/android/server/policy/PolicyControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "immersiveStatusFilter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    sget-object v0, Lcom/android/server/policy/PolicyControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "immersiveNavigationFilter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    sget-object v0, Lcom/android/server/policy/PolicyControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "immersivePreconfirmationsFilter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_9
    return-void
.end method
