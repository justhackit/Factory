.class Lnitro/phonestats/settings/Prefs$10;
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
    iput-object p1, p0, Lnitro/phonestats/settings/Prefs$10;->this$0:Lnitro/phonestats/settings/Prefs;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/settings/Prefs$10;)Lnitro/phonestats/settings/Prefs;
    .locals 1
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lnitro/phonestats/settings/Prefs$10;->this$0:Lnitro/phonestats/settings/Prefs;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 240
    new-instance v0, Lnitro/phonestats/settings/Prefs$10$1;

    iget-object v1, p0, Lnitro/phonestats/settings/Prefs$10;->this$0:Lnitro/phonestats/settings/Prefs;

    invoke-direct {v0, p0, v1}, Lnitro/phonestats/settings/Prefs$10$1;-><init>(Lnitro/phonestats/settings/Prefs$10;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 247
    invoke-virtual {v0, v1}, Lnitro/phonestats/settings/Prefs$10$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 248
    const/4 v0, 0x1

    return v0
.end method
