.class Lcom/android/server/trust/TrustManagerService$SettingsAttrs;
.super Ljava/lang/Object;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsAttrs"
.end annotation


# instance fields
.field public canUnlockProfile:Z

.field public componentName:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "canUnlockProfile"    # Z

    .line 1166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1167
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$SettingsAttrs;->componentName:Landroid/content/ComponentName;

    .line 1168
    iput-boolean p2, p0, Lcom/android/server/trust/TrustManagerService$SettingsAttrs;->canUnlockProfile:Z

    .line 1169
    return-void
.end method
