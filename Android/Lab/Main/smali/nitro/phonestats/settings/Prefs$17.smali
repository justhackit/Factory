.class Lnitro/phonestats/settings/Prefs$17;
.super Ljava/lang/Object;
.source "Prefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/settings/Prefs;->setOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/settings/Prefs;


# direct methods
.method constructor <init>(Lnitro/phonestats/settings/Prefs;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/settings/Prefs$17;->this$0:Lnitro/phonestats/settings/Prefs;

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    .line 351
    const-string v0, "content://sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 352
    .local v1, allCalls:Landroid/net/Uri;
    iget-object v0, p0, Lnitro/phonestats/settings/Prefs$17;->this$0:Lnitro/phonestats/settings/Prefs;

    invoke-virtual {v0}, Lnitro/phonestats/settings/Prefs;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 354
    .local v6, c:Landroid/database/Cursor;
    iget-object v0, p0, Lnitro/phonestats/settings/Prefs$17;->this$0:Lnitro/phonestats/settings/Prefs;

    const-string v2, "SMS native"

    invoke-static {v0, v6, v2}, Lnitro/phonestats/core/helper/NitroUtils;->cursorToInfoDialog(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 356
    const/4 v0, 0x1

    return v0
.end method
