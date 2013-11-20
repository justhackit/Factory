.class public Lnitro/phonestats/core/wrapper/ContactsWrapper;
.super Ljava/lang/Object;
.source "ContactsWrapper.java"


# static fields
.field private static ECLAIR:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    :try_start_0
    invoke-static {}, Lnitro/phonestats/core/wrapper/EclairContactsWrapper;->checkAvailable()V

    .line 35
    const/4 v1, 0x1

    sput-boolean v1, Lnitro/phonestats/core/wrapper/ContactsWrapper;->ECLAIR:Z
    :try_end_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .local v0, ex:Ljava/lang/VerifyError;
    :goto_0
    return-void

    .line 36
    .end local v0           #ex:Ljava/lang/VerifyError;
    :catch_0
    move-exception v0

    .line 37
    .restart local v0       #ex:Ljava/lang/VerifyError;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "ERROR: PRE ECLAIR SYSTEM DETECTED"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 38
    const/4 v1, 0x0

    sput-boolean v1, Lnitro/phonestats/core/wrapper/ContactsWrapper;->ECLAIR:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllNumbers(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 101
    sget-boolean v0, Lnitro/phonestats/core/wrapper/ContactsWrapper;->ECLAIR:Z

    if-nez v0, :cond_2

    .line 102
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v7, numbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    .line 104
    .local v1, lookupUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "number"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 105
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 106
    if-nez v0, :cond_0

    .line 110
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 112
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 116
    .end local v1           #lookupUri:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #numbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v7

    :cond_2
    invoke-static {p0}, Lnitro/phonestats/core/wrapper/EclairContactsWrapper;->getAllNumbers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    goto :goto_0
.end method

.method public static getContactBitmap(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "phone"
    .parameter "context"

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 48
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 51
    .local v9, options:Landroid/graphics/BitmapFactory$Options;
    sget-boolean v0, Lnitro/phonestats/core/wrapper/ContactsWrapper;->ECLAIR:Z

    if-nez v0, :cond_1

    .line 52
    sget-object v0, Landroid/provider/Contacts$Phones;->CONTENT_FILTER_URL:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 53
    .local v1, lookupUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "person"

    aput-object v4, v2, v11

    const/4 v4, 0x1

    const-string v5, "display_name"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "type"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 54
    .local v8, cursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 56
    .local v6, contactId:J
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 57
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 58
    .local v10, uri:Landroid/net/Uri;
    const v0, 0x7f020085

    invoke-static {p1, v10, v0, v9}, Landroid/provider/Contacts$People;->loadContactPhoto(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 64
    .end local v1           #lookupUri:Landroid/net/Uri;
    .end local v6           #contactId:J
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v10           #uri:Landroid/net/Uri;
    :goto_0
    return-object v0

    .line 60
    .restart local v1       #lookupUri:Landroid/net/Uri;
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020086

    invoke-static {v0, v2, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 64
    .end local v1           #lookupUri:Landroid/net/Uri;
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_1
    invoke-static {p0, p1, v9}, Lnitro/phonestats/core/wrapper/EclairContactsWrapper;->getContactBitmap(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static getContactDetails(Ljava/lang/String;Landroid/content/Context;)Ljava/util/HashMap;
    .locals 12
    .parameter "phone"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 77
    sget-boolean v0, Lnitro/phonestats/core/wrapper/ContactsWrapper;->ECLAIR:Z

    if-nez v0, :cond_1

    .line 79
    sget-object v0, Landroid/provider/Contacts$Phones;->CONTENT_FILTER_URL:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 80
    .local v1, lookupUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v9

    const-string v4, "type"

    aput-object v4, v2, v10

    const-string v4, "label"

    aput-object v4, v2, v11

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 81
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 83
    .local v7, mContactDetails:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "name"

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Landroid/provider/Contacts$Phones;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 85
    .local v8, type:Ljava/lang/String;
    const-string v0, "type"

    invoke-virtual {v7, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 94
    .end local v1           #lookupUri:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #mContactDetails:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #type:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 90
    .restart local v1       #lookupUri:Landroid/net/Uri;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v7, v3

    .line 91
    goto :goto_0

    .line 94
    .end local v1           #lookupUri:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    invoke-static {p0, p1}, Lnitro/phonestats/core/wrapper/EclairContactsWrapper;->getContactDetails(Ljava/lang/String;Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v7

    goto :goto_0
.end method
