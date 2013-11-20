.class public Lnitro/phonestats/activities/LogActivityShortcut;
.super Landroid/app/Activity;
.source "LogActivityShortcut.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lnitro/phonestats/core/helper/NitroUtils;->isPremium(Landroid/content/Context;Landroid/os/Handler;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 20
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lnitro/phonestats/activities/LogActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    .local v2, shortcutIntent:Landroid/content/Intent;
    const/high16 v3, 0x1400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 23
    const v3, 0x7f0200b4

    invoke-static {p0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v0

    .line 26
    .local v0, iconResource:Landroid/content/Intent$ShortcutIconResource;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 27
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 28
    const-string v3, "android.intent.extra.shortcut.NAME"

    const v4, 0x7f070118

    invoke-virtual {p0, v4}, Lnitro/phonestats/activities/LogActivityShortcut;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    const-string v3, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 30
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lnitro/phonestats/activities/LogActivityShortcut;->setResult(ILandroid/content/Intent;)V

    .line 40
    .end local v0           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #shortcutIntent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Lnitro/phonestats/activities/LogActivityShortcut;->finish()V

    .line 42
    return-void

    .line 34
    :cond_0
    const-string v3, "This is only integrated in donation version"

    invoke-static {p0, v3}, Lnitro/phonestats/core/helper/NitroUtils;->longToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
