.class public Landroid/view/BlackThemeAppUtils;
.super Ljava/lang/Object;
.source "BlackThemeAppUtils.java"


# static fields
.field public static final BLACK_THEME_APP_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final BLACK_THEME_NAVI_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 11
    const-string v0, "cn.nubia.accounts.AccountIntroActivity"

    const-string v1, "com.android.launcher3.settings.LauncherSettingsActivity"

    const-string v2, "cn.nubia.apptimelock.AppTimeLockSettings"

    const-string v3, "cn.nubia.apptimelock.LockModeSettings"

    const-string v4, "cn.nubia.apptimelock.ChoosePasswordActivity"

    const-string v5, "com.android.launcher3.ShowSystemWallpaperActivity"

    const-string v6, "com.android.launcher3.settings.LauncherLayoutChangeActivity"

    const-string v7, "cn.nubia.quicksearchbox.preferences.SearchSettingsActivity"

    const-string v8, "cn.nubia.quicksearchbox.SearchActivity"

    const-string v9, "cn.nubia.faceid.FaceIdActivity$WelcomePageActivity"

    const-string v10, "cn.nubia.faceid.FaceIdActivity$FaceIdSettingsActivity"

    const-string v11, "cn.nubia.faceid.FaceRegistActivity"

    const-string v12, "cn.nubia.hybrid.activity.NubiaHybridSettingActivity"

    const-string v13, "cn.nubia.hybrid.activity.HybridFeedbackActivity"

    const-string v14, "com.android.launcher3.SimpleWallpaperActivity"

    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/view/BlackThemeAppUtils;->BLACK_THEME_NAVI_LIST:Ljava/util/List;

    .line 28
    const-string v0, "com.android.settings"

    const-string v1, "com.android.phone"

    const-string v2, "cn.nubia.mms"

    const-string v3, "cn.nubia.contacts"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/view/BlackThemeAppUtils;->BLACK_THEME_APP_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
