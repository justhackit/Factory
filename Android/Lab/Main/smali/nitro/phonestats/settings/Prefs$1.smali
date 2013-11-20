.class Lnitro/phonestats/settings/Prefs$1;
.super Ljava/lang/Object;
.source "Prefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/settings/Prefs;->premiumalyzePreference(Landroid/preference/Preference;)V
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
    iput-object p1, p0, Lnitro/phonestats/settings/Prefs$1;->this$0:Lnitro/phonestats/settings/Prefs;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter "arg0"

    .prologue
    .line 132
    iget-object v0, p0, Lnitro/phonestats/settings/Prefs$1;->this$0:Lnitro/phonestats/settings/Prefs;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lnitro/phonestats/settings/Prefs$1;->this$0:Lnitro/phonestats/settings/Prefs;

    const-class v3, Lnitro/phonestats/activities/PremiumAdActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lnitro/phonestats/settings/Prefs;->startActivity(Landroid/content/Intent;)V

    .line 133
    iget-object v0, p0, Lnitro/phonestats/settings/Prefs$1;->this$0:Lnitro/phonestats/settings/Prefs;

    invoke-virtual {v0}, Lnitro/phonestats/settings/Prefs;->finish()V

    .line 134
    const/4 v0, 0x1

    return v0
.end method
