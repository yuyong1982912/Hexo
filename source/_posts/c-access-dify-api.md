---
title: c# access dify api
date: 2026-05-07 16:33:27
tags: dify
---

Dify is a AI tool.It can build some application ealily.

when you create a application in dify, you can access it use dify api.

the next is access dify api C# source code.

```
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace TranslateTool.Repository;

public class TranslateApi
{
    private string _url = "< The url that App build in >";

    public async Task<string?> Translate(string orignText)
    {
        using (var client=new HttpClient())
        {
            client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", "< App Api key>");
            var requestBody = new
            {
                inputs = new { },
                query = orignText,
                response_mode = "blocking",
                conversation_id = "",
                user = "abc-123"
            };
            var json = JsonSerializer.Serialize(requestBody);
            var content = new StringContent(json, Encoding.UTF8, "application/json");
            var response = await client.PostAsync(_url, content);
            response.EnsureSuccessStatusCode();
            var responseJson = await response.Content.ReadAsStringAsync();
            using (var doc=JsonDocument.Parse(responseJson))
            {
                if (doc.RootElement.TryGetProperty("answer", out var answer))
                {
                    return answer.GetString();
                }
                else
                {
                    return null;
                }
            }
        }
        
    }
}
```
