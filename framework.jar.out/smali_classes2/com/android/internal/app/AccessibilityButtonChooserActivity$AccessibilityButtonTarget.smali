.class Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;
.super Ljava/lang/Object;
.source "AccessibilityButtonChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AccessibilityButtonChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessibilityButtonTarget"
.end annotation


# instance fields
.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public mId:Ljava/lang/String;

.field public mLabel:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    invoke-virtual {p2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;->mId:Ljava/lang/String;

    .line 157
    invoke-virtual {p2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;->mLabel:Ljava/lang/CharSequence;

    .line 158
    invoke-virtual {p2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "labelResId"    # I
    .param p4, "iconRes"    # I

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p2, p0, Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;->mId:Ljava/lang/String;

    .line 164
    invoke-virtual {p1, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;->mLabel:Ljava/lang/CharSequence;

    .line 165
    invoke-virtual {p1, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 166
    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method
