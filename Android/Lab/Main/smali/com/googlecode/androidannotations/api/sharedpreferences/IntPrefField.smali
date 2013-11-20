.class public final Lcom/googlecode/androidannotations/api/sharedpreferences/IntPrefField;
.super Lcom/googlecode/androidannotations/api/sharedpreferences/AbstractPrefField;
.source "IntPrefField.java"


# instance fields
.field private final defaultValue:I


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V
    .locals 0
    .parameter "sharedPreferences"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/googlecode/androidannotations/api/sharedpreferences/AbstractPrefField;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 26
    iput p3, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/IntPrefField;->defaultValue:I

    .line 27
    return-void
.end method


# virtual methods
.method public get()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/IntPrefField;->defaultValue:I

    invoke-virtual {p0, v0}, Lcom/googlecode/androidannotations/api/sharedpreferences/IntPrefField;->getOr(I)I

    move-result v0

    return v0
.end method

.method public getOr(I)I
    .locals 2
    .parameter "defaultValue"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/IntPrefField;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/IntPrefField;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public put(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/googlecode/androidannotations/api/sharedpreferences/IntPrefField;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/IntPrefField;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/googlecode/androidannotations/api/sharedpreferences/IntPrefField;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 39
    return-void
.end method
