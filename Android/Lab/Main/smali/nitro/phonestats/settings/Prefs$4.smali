.class Lnitro/phonestats/settings/Prefs$4;
.super Ljava/lang/Object;
.source "Prefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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
    iput-object p1, p0, Lnitro/phonestats/settings/Prefs$4;->this$0:Lnitro/phonestats/settings/Prefs;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 167
    iget-object v0, p0, Lnitro/phonestats/settings/Prefs$4;->this$0:Lnitro/phonestats/settings/Prefs;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lnitro/phonestats/settings/Prefs;->setResult(I)V

    .line 169
    const/4 v0, 0x1

    return v0
.end method
