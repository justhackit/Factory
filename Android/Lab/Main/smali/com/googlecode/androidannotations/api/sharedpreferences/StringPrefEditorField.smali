.class public final Lcom/googlecode/androidannotations/api/sharedpreferences/StringPrefEditorField;
.super Lcom/googlecode/androidannotations/api/sharedpreferences/AbstractPrefEditorField;
.source "StringPrefEditorField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/googlecode/androidannotations/api/sharedpreferences/EditorHelper",
        "<TT;>;>",
        "Lcom/googlecode/androidannotations/api/sharedpreferences/AbstractPrefEditorField",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/googlecode/androidannotations/api/sharedpreferences/EditorHelper;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, this:Lcom/googlecode/androidannotations/api/sharedpreferences/StringPrefEditorField;,"Lcom/googlecode/androidannotations/api/sharedpreferences/StringPrefEditorField<TT;>;"
    .local p1, editorHelper:Lcom/googlecode/androidannotations/api/sharedpreferences/EditorHelper;,"TT;"
    invoke-direct {p0, p1, p2}, Lcom/googlecode/androidannotations/api/sharedpreferences/AbstractPrefEditorField;-><init>(Lcom/googlecode/androidannotations/api/sharedpreferences/EditorHelper;Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method public put(Ljava/lang/String;)Lcom/googlecode/androidannotations/api/sharedpreferences/EditorHelper;
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, this:Lcom/googlecode/androidannotations/api/sharedpreferences/StringPrefEditorField;,"Lcom/googlecode/androidannotations/api/sharedpreferences/StringPrefEditorField<TT;>;"
    iget-object v0, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/StringPrefEditorField;->editorHelper:Lcom/googlecode/androidannotations/api/sharedpreferences/EditorHelper;

    invoke-virtual {v0}, Lcom/googlecode/androidannotations/api/sharedpreferences/EditorHelper;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/StringPrefEditorField;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 26
    iget-object v0, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/StringPrefEditorField;->editorHelper:Lcom/googlecode/androidannotations/api/sharedpreferences/EditorHelper;

    return-object v0
.end method
