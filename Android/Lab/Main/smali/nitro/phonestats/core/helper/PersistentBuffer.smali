.class public Lnitro/phonestats/core/helper/PersistentBuffer;
.super Ljava/lang/Object;
.source "PersistentBuffer.java"


# static fields
.field private static final STRINGBUFFER:Ljava/lang/String; = "stringbuffer"

.field private static instance:Lnitro/phonestats/core/helper/PersistentBuffer;


# instance fields
.field private ctx:Landroid/content/Context;

.field private edit:Landroid/content/SharedPreferences$Editor;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lnitro/phonestats/core/helper/PersistentBuffer;->edit:Landroid/content/SharedPreferences$Editor;

    .line 27
    iput-object p1, p0, Lnitro/phonestats/core/helper/PersistentBuffer;->ctx:Landroid/content/Context;

    .line 28
    const-string v0, "stringbuffer"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/core/helper/PersistentBuffer;->prefs:Landroid/content/SharedPreferences;

    .line 29
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lnitro/phonestats/core/helper/PersistentBuffer;
    .locals 1
    .parameter "ctx"

    .prologue
    .line 18
    sget-object v0, Lnitro/phonestats/core/helper/PersistentBuffer;->instance:Lnitro/phonestats/core/helper/PersistentBuffer;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lnitro/phonestats/core/helper/PersistentBuffer;

    invoke-direct {v0, p0}, Lnitro/phonestats/core/helper/PersistentBuffer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnitro/phonestats/core/helper/PersistentBuffer;->instance:Lnitro/phonestats/core/helper/PersistentBuffer;

    .line 22
    :cond_0
    sget-object v0, Lnitro/phonestats/core/helper/PersistentBuffer;->instance:Lnitro/phonestats/core/helper/PersistentBuffer;

    return-object v0
.end method


# virtual methods
.method public commitTransaction()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lnitro/phonestats/core/helper/PersistentBuffer;->edit:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lnitro/phonestats/core/helper/PersistentBuffer;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lnitro/phonestats/core/helper/PersistentBuffer;->edit:Landroid/content/SharedPreferences$Editor;

    .line 42
    :cond_0
    return-void
.end method

.method public getFloatValue(Ljava/lang/String;F)F
    .locals 1
    .parameter "key"
    .parameter "defaultVal"

    .prologue
    .line 110
    iget-object v0, p0, Lnitro/phonestats/core/helper/PersistentBuffer;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getIntValue(Ljava/lang/String;I)I
    .locals 1
    .parameter "key"
    .parameter "defaultVal"

    .prologue
    .line 93
    iget-object v0, p0, Lnitro/phonestats/core/helper/PersistentBuffer;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLongValue(Ljava/lang/String;J)J
    .locals 2
    .parameter "key"
    .parameter "defaultVal"

    .prologue
    .line 76
    iget-object v0, p0, Lnitro/phonestats/core/helper/PersistentBuffer;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "defaultVal"

    .prologue
    .line 58
    iget-object v0, p0, Lnitro/phonestats/core/helper/PersistentBuffer;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setFloatValue(Ljava/lang/String;F)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 99
    iget-object v1, p0, Lnitro/phonestats/core/helper/PersistentBuffer;->edit:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    .line 100
    iget-object v0, p0, Lnitro/phonestats/core/helper/PersistentBuffer;->edit:Landroid/content/SharedPreferences$Editor;

    .line 103
    .local v0, prefedit:Landroid/content/SharedPreferences$Editor;
    :goto_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    return-void

    .line 102
    .end local v0           #prefedit:Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v1, p0, Lnitro/phonestats/core/helper/PersistentBuffer;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .restart local v0       #prefedit:Landroid/content/SharedPreferences$Editor;
    goto :goto_0
.end method

.method public setIntValue(Ljava/lang/String;I)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 82
    iget-object v1, p0, Lnitro/phonestats/core/helper/PersistentBuffer;->edit:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    .line 83
    iget-object v0, p0, Lnitro/phonestats/core/helper/PersistentBuffer;->edit:Landroid/content/SharedPreferences$Editor;

    .line 86
    .local v0, prefedit:Landroid/content/SharedPreferences$Editor;
    :goto_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    return-void

    .line 85
    .end local v0           #prefedit:Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v1, p0, Lnitro/phonestats/core/helper/PersistentBuffer;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .restart local v0       #prefedit:Landroid/content/SharedPreferences$Editor;
    goto :goto_0
.end method

.method public setLongValue(Ljava/lang/String;J)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 65
    iget-object v1, p0, Lnitro/phonestats/core/helper/PersistentBuffer;->edit:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    .line 66
    iget-object v0, p0, Lnitro/phonestats/core/helper/PersistentBuffer;->edit:Landroid/content/SharedPreferences$Editor;

    .line 69
    .local v0, prefedit:Landroid/content/SharedPreferences$Editor;
    :goto_0
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 72
    return-void

    .line 68
    .end local v0           #prefedit:Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v1, p0, Lnitro/phonestats/core/helper/PersistentBuffer;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .restart local v0       #prefedit:Landroid/content/SharedPreferences$Editor;
    goto :goto_0
.end method

.method public setStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 47
    iget-object v1, p0, Lnitro/phonestats/core/helper/PersistentBuffer;->edit:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    .line 48
    iget-object v0, p0, Lnitro/phonestats/core/helper/PersistentBuffer;->edit:Landroid/content/SharedPreferences$Editor;

    .line 51
    .local v0, prefedit:Landroid/content/SharedPreferences$Editor;
    :goto_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 52
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 53
    return-void

    .line 50
    .end local v0           #prefedit:Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v1, p0, Lnitro/phonestats/core/helper/PersistentBuffer;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .restart local v0       #prefedit:Landroid/content/SharedPreferences$Editor;
    goto :goto_0
.end method

.method public startTransaction()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lnitro/phonestats/core/helper/PersistentBuffer;->edit:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lnitro/phonestats/core/helper/PersistentBuffer;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/core/helper/PersistentBuffer;->edit:Landroid/content/SharedPreferences$Editor;

    .line 34
    :cond_0
    return-void
.end method
